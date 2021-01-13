<template>
  <a-input-search
    v-model:value="value"
    :placeholder="placeholder"
    @search="search"
    :style="{ width: width + 'px' }"
    :allowClear="true"
  >
    <template #enterButton>
      <a-button type="primary">
        <template #icon><SearchOutlined /></template>搜索
      </a-button>
    </template>
  </a-input-search>
</template>

<script lang="ts" src="./SearchInputButton.ts"></script>
