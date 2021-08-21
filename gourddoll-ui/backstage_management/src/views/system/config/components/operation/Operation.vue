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
    <a-form-item label="参数名称" v-bind="validateInfos.configName">
      <a-input v-model:value="modelRef.configName" />
    </a-form-item>
    <a-form-item label="参数键名" v-bind="validateInfos.configKey">
      <a-input v-model:value="modelRef.configKey" />
    </a-form-item>
    <a-form-item label="参数键值" v-bind="validateInfos.configValue">
      <a-input v-model:value="modelRef.configValue" />
    </a-form-item>
    <a-form-item label="系统内置" v-bind="validateInfos.configType">
      <a-input v-model:value="modelRef.configType" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
