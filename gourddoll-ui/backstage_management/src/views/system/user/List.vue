<template>
  <div class="flex-container">
    <div class="head">
      <div class="left-head">
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
      <div class="right-head">
        <a-input-search
          v-model:value="searchText"
          placeholder="输入 姓名/用户名/邮箱/电话 搜索"
          @search="loadDataByQuickText"
          class="search-input"
          :allowClear="true"
        >
          <template #enterButton>
            <a-button type="primary">
              <template #icon><SearchOutlined /></template>搜索
            </a-button>
          </template>
        </a-input-search>
      </div>
    </div>
    <div class="content">
      <a-table
        class="data-table"
        :scroll="{ x: true, y: true }"
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
    </div>
  </div>
  <AddUser @saveComplete="loadData()" v-model:visible="isAddModal"></AddUser>
  <EditUser @saveComplete="loadData()" v-model:visible="isEditModal"></EditUser>
</template>

<style lang="scss" src="./List.scss" scoped></style>
<script lang="ts" src="./List.ts"></script>
