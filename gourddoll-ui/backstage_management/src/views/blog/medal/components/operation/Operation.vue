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
    <a-form-item label="勋章名" v-bind="validateInfos.medalName">
      <a-input v-model:value="modelRef.medalName" />
    </a-form-item>
    <a-form-item label="勋章图片" v-bind="validateInfos.img">
      <a-input v-model:value="modelRef.img" />
    </a-form-item>
    <a-form-item label="勋章描述" v-bind="validateInfos.description">
      <a-input v-model:value="modelRef.description" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
