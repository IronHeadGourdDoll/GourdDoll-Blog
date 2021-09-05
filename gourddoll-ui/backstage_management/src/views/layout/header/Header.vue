<template>
  <div class="header">
    <div>
      欢迎您,<strong>{{ nickName }}</strong>
    </div>
    <div>
      <a-dropdown-button>
        {{ nickName }}
        <template #overlay>
          <a-menu>
            <a-menu-item @click="showUserInfo"
              ><SolutionOutlined />个人信息</a-menu-item
            >
            <a-menu-item @click="userExit"
              ><UserOutlined />安全退出</a-menu-item
            >
          </a-menu>
        </template>
        <template #icon><UserOutlined /></template>
      </a-dropdown-button>
    </div>
  </div>

  <a-modal v-model:visible="userInfoVisible" title="个人信息" :footer="null">
    <a-form
      :label-col="{ span: 4 }"
      :wrapper-col="{ span: 14 }"
      layout="horizontal"
      :style="{ width: '460px' }"
    >
      <a-form-item label="姓名" v-bind="validateInfos.nickName">
        <a-input v-model:value="modelRef.nickName" />
      </a-form-item>
      <a-form-item label="用户名" v-bind="validateInfos.userName">
        <a-input v-model:value="modelRef.userName" :disabled="true" />
      </a-form-item>
      <a-form-item label="密码" v-bind="validateInfos.password">
        <a-input-password v-model:value="modelRef.password" />
      </a-form-item>
      <a-form-item label="性别">
        <a-select v-model:value="modelRef.sex" placeholder="请选择性别">
          <a-select-option
            v-for="([key, value], index) in sexMap.entries()"
            :value="key"
            :key="index"
          >
            {{ value }}
          </a-select-option>
        </a-select>
      </a-form-item>
      <a-form-item label="邮箱" v-bind="validateInfos.email">
        <a-input v-model:value="modelRef.email" />
      </a-form-item>
      <a-form-item label="电话" v-bind="validateInfos.phonenumber">
        <a-input v-model:value="modelRef.phonenumber" />
      </a-form-item>

      <a-form-item class="downBtn" :wrapper-col="{ span: 8, offset: 9 }">
        <a-button type="primary" @click="onSubmit">确认修改</a-button>
        <a-button @click="onCancel">取消</a-button>
      </a-form-item>
    </a-form>
  </a-modal>
</template>

<style lang="scss" scoped>
.header {
  display: flex;
  justify-content: space-between;
}
</style>
<script lang="ts">
import { defineComponent, createVNode, ref, reactive, toRaw } from "vue";
import UserInfo from "@/share/cache/userInfo";
import {
  UserOutlined,
  ExclamationCircleOutlined,
  SolutionOutlined,
} from "@ant-design/icons-vue";
import { Modal, message } from "ant-design-vue";
import router from "@/router";
import store from "@/store";
import { useForm } from "@ant-design-vue/use";
import SexEnum, { getSexMap } from "@/service/enumeration/sexEnum";
import UserController from "@/service/controller/system/userController";

export default defineComponent({
  name: "Header",
  components: {
    UserOutlined,
    SolutionOutlined,
  },
  setup() {
    const userInfo = UserInfo.get();

    const nickName = userInfo?.user.nickName;

    function exitClear() {
      const closeLoad = message.loading("安全退出中···");
      store
        .dispatch("user/logout")
        .then(() => {
          closeLoad();
          router.push({ path: "/login", replace: true });
          message.destroy();
          message.success("安全退出成功", 0.8);
        })
        .catch(() => {
          closeLoad();
          message.error("安全退出失败");
        });
    }

    function userExit() {
      Modal.confirm({
        title: "温馨提示",
        icon: createVNode(ExclamationCircleOutlined),
        content: "确定要退出吗？",
        okText: "确认",
        cancelText: "取消",
        onOk: exitClear,
      });
    }

    // let validateInfos = reactive<any>({});
    const userInfoVisible = ref<boolean>(false);
    const modelRef: any = reactive({
      nickName: "",
      userName: "",
      admin: false,
      password: "",
      userId: null,
      sex: SexEnum.none,
      email: "",
      phonenumber: "",
    });

    const rulesRef: any = reactive({
      nickName: [
        {
          required: true,
          message: "请输入姓名",
        },
      ],
      userName: [
        {
          required: true,
          message: "请输入用户名",
        },
      ],
      password: [
        {
          required: true,
          message: "请输入密码",
        },
      ],
      email: [
        {
          type: "email",
          message: "邮箱格式错误",
        },
      ],
      phonenumber: [
        {
          max: 11,
          message: "电话长度不可超过11位",
        },
      ],
    });
    const { resetFields, validateInfos, validate } = useForm(
      modelRef,
      rulesRef
    );

    function onCancel() {
      userInfoVisible.value = false;
    }
    const userService = new UserController();
    function onSubmit() {
      validate().then(() => {
        userService.edit(toRaw(modelRef)).then(() => {
          message.success("修改个人信息成功");
          userInfoVisible.value = false;
        });
      });
    }

    function showUserInfo() {
      resetFields();
      userService.getInfo().then((data) => {
        data.user.password = "";
        Object.assign(modelRef, data.user);
        userInfoVisible.value = true;
      });
    }

    return {
      nickName,
      userExit,
      userInfoVisible,
      showUserInfo,
      validateInfos,
      onCancel,
      onSubmit,
      modelRef,
      sexMap: getSexMap(),
    };
  },
});
</script>
