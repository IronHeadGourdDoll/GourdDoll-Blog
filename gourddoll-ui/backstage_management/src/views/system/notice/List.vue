<template>
  <CurdLayout>
    <template #headerLeft>
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

    <template #headerRight>
      <SearchInputButton
        v-model:text="searchText"
        placeholder="输入 通知标题 搜索"
        @searchQuery="quickLoad"
      />
    </template>

    <template #content>
      <PagDataTable
        :columns="columns"
        :dataSource="dataRows"
        rowKey="noticeId"
        :total="dataTotal"
        :calcHeight="335"
        v-model:selectedRowKeys="tableSelectedRowKeys"
        v-model:selectedRows="tableSelectedRows"
        @loadData="loadDataByPage"
      >
      </PagDataTable>
    </template>
  </CurdLayout>

  <Operation
    @saveComplete="loadData()"
    v-model:visible="isShowOperation"
  ></Operation>
</template>

<style lang="scss" src="./List.scss" scoped></style>
<script lang="ts" src="./List.ts"></script>
