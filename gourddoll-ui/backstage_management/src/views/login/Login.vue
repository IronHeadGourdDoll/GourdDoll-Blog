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
        <div>
          <a-button type="link" @click="showRegister"
            >没有账号？点击注册</a-button
          >
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

  <a-modal v-model:visible="registerVisible" title="注册" :footer="null">
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
        <a-input v-model:value="modelRef.userName" />
      </a-form-item>
      <a-form-item label="密码" v-bind="validateInfos.password">
        <a-input-password v-model:value="modelRef.password" />
      </a-form-item>
      <a-form-item label="确认密码" v-bind="validateInfos.confirmPassword">
        <a-input-password v-model:value="modelRef.confirmPassword" />
      </a-form-item>

      <a-form-item class="downBtn" :wrapper-col="{ span: 8, offset: 9 }">
        <a-button type="primary" @click="onSubmit">确认注册</a-button>
        <a-button @click="onCancel">取消</a-button>
      </a-form-item>
    </a-form>
  </a-modal>
</template>

<style lang="scss">
.card-longin {
  .ant-card-head-title {
    font-weight: 800;
    font-size: 22px;
  }
}
</style>
<style lang="scss" src="./Login.scss" scoped></style>
<script lang="ts" src="./Login.ts"></script>
