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
            <a-menu-item @click="userExit"
              ><UserOutlined />安全退出</a-menu-item
            >
          </a-menu>
        </template>
        <template #icon><UserOutlined /></template>
      </a-dropdown-button>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.header {
  display: flex;
  justify-content: space-between;
}
</style>
<script lang="ts">
import { defineComponent, createVNode } from "vue";
import UserInfo from "@/share/cache/userInfo";
import { UserOutlined, ExclamationCircleOutlined } from "@ant-design/icons-vue";
import { Modal, message } from "ant-design-vue";
import router from "@/router";
import store from "@/store";

export default defineComponent({
  name: "Header",
  components: {
    UserOutlined
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
        onOk: exitClear
      });
    }

    return { nickName, userExit };
  }
});
</script>
