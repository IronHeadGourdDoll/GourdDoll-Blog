<template>
  <a-modal
    :visible="visible"
    :closable="false"
    :footer="null"
    :width="530"
    title="添加用户"
  >
    <a-form
      :label-col="{ span: 4 }"
      :wrapper-col="{ span: 14 }"
      layout="horizontal"
      style="width: 580px"
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
      <a-form-item label="管理员">
        <a-switch
          checked-children="是"
          un-checked-children="否"
          v-model:checked="modelRef.admin"
        />
      </a-form-item>
      <a-form-item label="备注" name="desc">
        <a-textarea v-model:value="modelRef.remark" />
      </a-form-item>
      <a-form-item class="downBtn" :wrapper-col="{ span: 14, offset: 4 }">
        <a-button type="primary" @click="onSubmit">保存</a-button>
        <a-button type="danger" @click="resetFields"> 重置 </a-button>
        <a-button @click="hideModal"> 取消 </a-button>
      </a-form-item>
    </a-form>
  </a-modal>
</template>

<style lang="scss" src="./AddUser.scss" scoped></style>
<script lang="ts" src="./AddUser.ts"></script>
