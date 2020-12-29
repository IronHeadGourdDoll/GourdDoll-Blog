<template>
  <div class="head">
    <div class="left-float">
      <a-button-group>
        <a-button @click="add">
          <template #icon><PlusOutlined /></template>添加
        </a-button>
        <a-button @click="edit">
          <template #icon><EditOutlined /></template>修改
        </a-button>
        <a-button @click="deleted">
          <template #icon><DeleteOutlined /></template>删除
        </a-button>
      </a-button-group>
    </div>
    <a-input-search
      v-model:value="searchText"
      placeholder="输入 姓名/用户名/邮箱/电话 搜索 "
      @search="loadData()"
      class="search-input right-float"
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
    :row-selection="rowSelection"
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
