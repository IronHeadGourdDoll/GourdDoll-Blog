<template>
  <LeftRightLayout>
    <template #contentLeft>
      <SearchTree
        v-model:text="treeSearchText"
        @select="treeSelected"
        :treeData="treeData"
      ></SearchTree>
    </template>

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
        placeholder="输入 名称 搜索"
        @searchQuery="quickLoad"
      />
    </template>

    <template #contentRight>
      <PagDataTable
        :columns="columns"
        :dataSource="dataRows"
        rowKey="deptId"
        :total="dataTotal"
        :calcHeight="365"
        v-model:selectedRowKeys="tableSelectedRowKeys"
        v-model:selectedRows="tableSelectedRows"
        @loadData="loadDataByPage"
      ></PagDataTable>
    </template>
  </LeftRightLayout>

  <Operation
    @saveComplete="loadData()"
    v-model:visible="isShowOperation"
    :treeData="treeData"
    :treeSelectedId="treeSelectedId"
  ></Operation>
</template>

<style lang="scss" src="./List.scss" scoped></style>
<script lang="ts" src="./List.ts"></script>
