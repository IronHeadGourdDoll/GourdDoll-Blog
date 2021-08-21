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
    <a-form-item label="字典名">
      <a-input v-model:value="modelRef.dictLabel" />
    </a-form-item>
    <a-form-item label="字典值">
      <a-input v-model:value="modelRef.dictValue" />
    </a-form-item>
    <a-form-item label="字典类型">
      <a-input v-model:value="modelRef.dictType" />
    </a-form-item>
    <!-- <a-form-item label="字典编码">
      <a-input v-model:value="modelRef.dictCode" />
    </a-form-item> -->
    <a-form-item label="字典排序">
      <a-input v-model:value="modelRef.dictSort" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
