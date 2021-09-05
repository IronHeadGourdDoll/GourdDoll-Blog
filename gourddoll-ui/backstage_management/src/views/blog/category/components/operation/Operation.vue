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
    <a-form-item label="分类名" v-bind="validateInfos.categoryName">
      <a-input v-model:value="modelRef.categoryName" />
    </a-form-item>
    <!-- <a-form-item label="父分类id" v-bind="validateInfos.parentId">
      <a-input v-model:value="modelRef.parentId" />
    </a-form-item> -->
    <a-form-item label="排序" v-bind="validateInfos.orderNum">
      <a-input v-model:value="modelRef.orderNum" type="number" />
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
