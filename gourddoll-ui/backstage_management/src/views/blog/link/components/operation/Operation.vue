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
    <a-form-item label="友链用户名" v-bind="validateInfos.userName">
      <a-input v-model:value="modelRef.userName" />
    </a-form-item>
    <a-form-item label="被友链用户名" v-bind="validateInfos.linkedUsername">
      <a-input v-model:value="modelRef.linkedUsername" />
    </a-form-item>
    <a-form-item label="被友链地址" v-bind="validateInfos.url">
      <a-input v-model:value="modelRef.url" />
    </a-form-item>
    <a-form-item label="简述" v-bind="validateInfos.summary">
      <a-input v-model:value="modelRef.summary" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
