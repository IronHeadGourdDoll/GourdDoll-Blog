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
    <a-form-item label="标签名">
      <a-input v-model:value="modelRef.tagName" />
    </a-form-item>
    <a-form-item label="描述">
      <a-input v-model:value="modelRef.description" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
