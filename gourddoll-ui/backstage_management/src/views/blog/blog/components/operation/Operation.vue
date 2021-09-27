<template>
  <FormModal
    :modalWidth="1180"
    :title="title"
    :visible="visible"
    @save="onSubmit"
    @reset="resetForm"
    @cancel="onCancel"
    :isReset="isShowReset"
  >
    <a-form-item label="标题" v-bind="validateInfos.title">
      <a-input v-model:value="modelRef.title" />
    </a-form-item>
    <a-form-item label="作者" v-bind="validateInfos.author">
      <a-input v-model:value="modelRef.author" />
    </a-form-item>
    <a-form-item label="简介" v-bind="validateInfos.summary">
      <a-input v-model:value="modelRef.summary" />
    </a-form-item>
    <a-form-item label="分类">
          <a-select 
              v-model:value="modelRef.categoryId"
              show-search
              @change="handleChange"
            >
              <a-select-option v-for="item in categories" :key="item.value">
              {{ item.label }}
            </a-select-option>
          </a-select>
        </a-form-item>
    <a-form-item label="是否推荐" v-bind="validateInfos.commend">
      <a-textarea v-model:value="modelRef.commend" />
    </a-form-item>
    <!-- <TEditor ref="editor" v-model:value="modelRef.content" /> -->
    <MEditor ref="editor" v-model:value="modelRef.content" />
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
