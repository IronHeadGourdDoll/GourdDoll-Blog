<template>
  <div class="container_longin">
    <a-card title="登录" class="card-longin">
      <a-form :model="formInline" @submit="handleSubmit">
        <a-form-item>
          <a-input
            class="user_name"
            v-model:value="formInline.user"
            placeholder="输入用户名"
          >
            <template #prefix>
              <a-icon type="user" />
            </template>
          </a-input>
        </a-form-item>
        <a-form-item>
          <a-input
            class="user_pwd"
            v-model:value="formInline.password"
            type="password"
            placeholder="输入密码"
          >
            <template #prefix>
              <a-icon type="lock" />
            </template>
          </a-input>
        </a-form-item>
        <div class="verification_div">
          <div class="verification_img left-float" @click="loadCodeImg">
            <img class="fill" :src="formInline.img" alt="验证码图片" />
          </div>
          <a-input
            class="verification_code left-float"
            placeholder="输入验证码"
            type="number"
            v-model:value="formInline.code"
          />
        </div>
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

<style lang="scss">
.card-longin {
  .ant-card-head-title {
    font-weight: 800;
    font-size: 22px;
  }
}
</style>
<style lang="scss" src="./login.scss" scoped></style>
<script lang="ts" src="./login.ts"></script>
