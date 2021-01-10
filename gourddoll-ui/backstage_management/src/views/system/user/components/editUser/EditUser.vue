<template>
  <FormModal
    :modalWidth="580"
    title="编辑用户"
    :visible="visible"
    @save="onSubmit"
    @reset="resetFields"
    @cancel="onCancel"
    :isReset="false"
  >
    <a-form-item label="姓名" v-bind="validateInfos.nickName">
      <a-input v-model:value="modelRef.nickName" />
    </a-form-item>
    <a-form-item label="用户名" v-bind="validateInfos.userName">
      <a-input :disabled="true" v-model:value="modelRef.userName" />
    </a-form-item>
    <a-form-item label="密码">
      <a-input-password
        v-model:value="modelRef.password"
        placeholder="为空则不会修改密码"
      />
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
  </FormModal>
</template>

<script lang="ts" src="./EditUser.ts"></script>
