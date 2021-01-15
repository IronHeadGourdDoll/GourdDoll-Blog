<template>
  <CurdLayout>
    <template v-slot:headerLeft>
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
    </template>

    <template v-slot:headerRight>
      <SearchInputButton
        v-model:text="searchText"
        placeholder="输入 姓名/用户名/邮箱/电话 搜索"
        @searchQuery="quickLoad"
      />
    </template>

    <template v-slot:content>
      <PagDataTable
        :columns="columns"
        :dataSource="dataRows"
        rowKey="userId"
        :total="dataTotal"
        :calcHeight="335"
        v-model:selectedRowKeys="tableSelectedRowKeys"
        v-model:selectedRows="tableSelectedRows"
        @loadData="loadDataByPage"
      >
        <template #sex="{ text }">
          {{ getSexText(text) }}
        </template>
        <template #admin="{ text }">
          {{ getYesNoText(text) }}
        </template>
      </PagDataTable>
    </template>
  </CurdLayout>

  <AddUser @saveComplete="loadData()" v-model:visible="isAddModal"></AddUser>
  <EditUser @saveComplete="loadData()" v-model:visible="isEditModal"></EditUser>
</template>

<style lang="scss" src="./List.scss" scoped></style>
<script lang="ts" src="./List.ts"></script>
