<template>
  <div class="head">
    <a-input-search
      v-model:value="searchText"
      placeholder="输入 姓名/用户名/邮箱/电话 搜索 "
      @search="loadData()"
      class="search-input"
    >
      <template #enterButton>
        <a-button type="primary">
          <template #icon><SearchOutlined /></template>搜索
        </a-button>
      </template>
    </a-input-search>
  </div>
  <a-table
    :columns="columns"
    :dataSource="dataRows"
    :pagination="pagination"
    @change="handleTableChange"
    rowKey="userId"
  >
    <template #sex="{ text }">
      {{ getSexText(text) }}
    </template>
    <template #admin="{ text }">
      {{ getYesNoText(text) }}
    </template>
  </a-table>
</template>

<style lang="scss" src="./List.scss" scoped></style>
<script lang="ts" src="./List.ts"></script>
