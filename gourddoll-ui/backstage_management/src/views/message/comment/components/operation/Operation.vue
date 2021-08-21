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
    <a-form-item label="服务名">
      <a-select 
          v-model:value="modelRef.serviceId"
          show-search
          @change="handleChange"
        >
          <a-select-option v-for="item in services" :key="item.value">
          {{ item.label }}
        </a-select-option>
      </a-select>
    </a-form-item>
    <a-form-item label="评论内容" v-bind="validateInfos.content">
      <a-textarea v-model:value="modelRef.content" />
    </a-form-item>
    <a-form-item label="评分">
      <a-rate v-model:value="modelRef.rate" />
      <!-- <span class="ant-rate-text">allowClear: true</span> -->
    </a-form-item>
    <!-- <a-form-item label="上级id" v-bind="validateInfos.parent">
      <a-input v-model:value="modelRef.parent" />
    </a-form-item> -->
    <a-form-item label="状态">
      <a-input v-model:value="modelRef.status"/>
    </a-form-item>
    <a-form-item label="备注" name="desc">
      <a-textarea v-model:value="modelRef.remark" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
