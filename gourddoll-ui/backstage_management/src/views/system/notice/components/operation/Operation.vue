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
    <a-form-item label="公告标题" v-bind="validateInfos.noticeTitle">
      <a-input v-model:value="modelRef.noticeTitle" />
    </a-form-item>
    <a-form-item label="公告类型" v-bind="validateInfos.noticeType">
      <a-input v-model:value="modelRef.noticeType" />
    </a-form-item>
    <a-form-item label="公告内容" v-bind="validateInfos.noticeContent">
      <a-input v-model:value="modelRef.noticeContent" />
    </a-form-item>
    <a-form-item label="公告状态" v-bind="validateInfos.status">
      <a-input v-model:value="modelRef.status" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
