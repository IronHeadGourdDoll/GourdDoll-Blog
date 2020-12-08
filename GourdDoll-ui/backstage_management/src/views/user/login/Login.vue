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
            <template #prefix><UserOutlined /></template>
          </a-input>
        </a-form-item>
        <a-form-item>
          <a-input
            class="user_pwd"
            v-model:value="formInline.password"
            type="password"
            placeholder="输入密码"
          >
            <template #prefix><LockOutlined /></template>
          </a-input>
        </a-form-item>
        <a-form-item class="submitdiv">
          <a-button
            type="primary"
            html-type="submit"
            size="large"
            :disabled="btnIsDisabled"
          >
            {{ btnText }}
          </a-button>
        </a-form-item>
      </a-form>
    </a-card>
  </div>
</template>

<style lang="scss" src="./login.scss" scoped></style>
<script lang="ts" src="./login.ts"></script>
