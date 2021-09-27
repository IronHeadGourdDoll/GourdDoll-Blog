<template>
  <div class="header">
    <div></div>
    <div class="avatar-box">
      <a-avatar class="">{{ nickName?.[0] }}</a-avatar>
      <a-dropdown>
        <a class="dropdown-link" @click.prevent> 晚上好！{{ nickName }} </a>
        <template #overlay>
          <a-menu>
            <a-menu-item @click="showUserInfo"
              ><SolutionOutlined />个人信息</a-menu-item
            >
            <a-menu-item @click="userExit">
              <UserOutlined />安全退出
            </a-menu-item>
          </a-menu>
        </template>
      </a-dropdown>
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
        <a-button @click="() => (userInfoVisible = false)">取消</a-button>
      </a-form-item>
    </a-form>
  </a-modal>
</template>

<style lang="scss" scoped>
.avatar-box {
  min-width: 8rem;
}
.avatar {
  margin-left: 2rem;
}
.dropdown-link {
  display: inline-block;
  height: 100%;
  margin-left: 1rem;
  font-size: 1rem;
  color: black;
}

.header {
  display: flex;
  justify-content: space-between;
}
</style>
<script lang="ts">
import { defineComponent, ref, reactive, toRaw, UnwrapRef } from "vue";
import UserInfo from "@/share/cache/userInfo";
import { SolutionOutlined, UserOutlined } from "@ant-design/icons-vue";
import { message } from "ant-design-vue";

import { Form } from "ant-design-vue";
import UserController from "@/service/controller/system/userController";

import Header, { rulesRef } from "./Header";
import UserEntity from "@/service/model/system/user/userEntity";
import SexEnum, { getSexMap } from "@/service/enumeration/sexEnum";

export default defineComponent({
  name: "Header",
  components: { SolutionOutlined, UserOutlined },
  setup() {
    const userInfo = UserInfo.get();

    const nickName = userInfo?.user.nickName;

    const userInfoVisible = ref<boolean>(false);

    const model: UserEntity = {
      nickName: "",
      avatar: "",
      userName: "",
      admin: false,
      password: "",
      userId: 0,
      sex: SexEnum.man,
      email: "",
      phonenumber: "",
    };
    const modelRef: UnwrapRef<UserEntity> = reactive(model);

    const { resetFields, validateInfos, validate } = Form.useForm(
      modelRef,
      rulesRef
    );
    const userService = new UserController();
    async function onSubmit() {
      try {
        await validate();
        await userService.edit(toRaw(modelRef));
        message.success("修改个人信息成功");
      } catch (err) {
        console.error("操作失败");
      }
      console.log(1);
      userInfoVisible.value = false;
    }

    const showUserInfo = () => {
      resetFields();
      userService.getInfo().then((data) => {
        data.user.password = "";
        Object.assign(modelRef, data.user);
        userInfoVisible.value = true;
      });
    };

    return {
      sexMap: getSexMap(),
      ...Header,
      nickName,
      userInfoVisible,
      showUserInfo,
      validateInfos,
      onSubmit,
      modelRef,
    };
  },
});
</script>
