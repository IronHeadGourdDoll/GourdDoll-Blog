<template>
  <div class="container_longin">
    <a-card title="登录" class="card_longin">
      <a-form :model="formInline" @submit="handleSubmit">
        <a-form-item>
          <a-input
            class="user_name"
            v-model:value="formInline.user"
            placeholder="输入用户名"
          >
            <template #prefix
              ><UserOutlined style="color: rgba(0, 0, 0, 0.25)"
            /></template>
          </a-input>
        </a-form-item>
        <a-form-item>
          <a-input
            class="user_pwd"
            v-model:value="formInline.password"
            type="password"
            placeholder="输入密码"
          >
            <template #prefix
              ><LockOutlined style="color: rgba(0, 0, 0, 0.25)"
            /></template>
          </a-input>
        </a-form-item>
        <a-form-item class="submitdiv">
          <a-button
            type="primary"
            html-type="submit"
            size="large"
            :disabled="formInline.user === '' || formInline.password === ''"
          >
            登 录
          </a-button>
        </a-form-item>
      </a-form>
    </a-card>
  </div>
</template>

<style src="./login.scss" lang="scss" scoped></style>
<script>
import { UserOutlined, LockOutlined } from "@ant-design/icons-vue";

export default {
  components: {
    UserOutlined,
    LockOutlined
  },
  data() {
    return {
      formInline: {
        user: "",
        password: ""
      }
    };
  },
  methods: {
    handleSubmit() {
      console.log(this.formInline);
    }
  }
};
</script>
