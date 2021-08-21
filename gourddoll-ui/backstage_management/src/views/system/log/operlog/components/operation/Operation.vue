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
    <a-form-item label="操作模块">
      <a-input v-model:value="modelRef.title" />
    </a-form-item>
    <a-form-item label="请求方法">
      <a-input v-model:value="modelRef.method" />
    </a-form-item>
    <a-form-item label="requestMethod">
      <a-input v-model:value="modelRef.requestMethod" />
    </a-form-item>
    <a-form-item label="操作人员">
      <a-textarea v-model:value="modelRef.operName" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
