<template>
  <FormModal
    :modalWidth="580"
    :title="title"
    :visible="visible"
    @save="onSubmit"
    @reset="resetForm"
    @cancel="onCancel"
    :isReset="isShowReset"
  >
    <a-form-item label="角色名" v-bind="validateInfos.roleName">
      <a-input v-model:value="modelRef.roleName" />
    </a-form-item>
    <a-form-item label="角色权限" v-bind="validateInfos.roleKey">
      <a-input v-model:value="modelRef.roleKey" />
    </a-form-item>
    <a-form-item label="排序" v-bind="validateInfos.roleSort">
      <a-input v-model:value="modelRef.roleSort" />
    </a-form-item>
    <a-form-item label="状态" v-bind="validateInfos.status">
      <a-input v-model:value="modelRef.status" />
    </a-form-item>
    <a-form-item label="备注" name="desc">
      <a-textarea v-model:value="modelRef.remark" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
