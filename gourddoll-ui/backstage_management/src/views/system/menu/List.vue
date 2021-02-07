<template>
  <LeftRightLayout>
    <template #contentLeft>
      <a-tree
        :checkable="false"
        :tree-data="treeData"
        :autoExpandParent="true"
        :defaultExpandAll="true"
        :defaultExpandParent="true"
        :replaceFields="{ children: 'children', title: 'label', key: 'id' }"
        @select="treeSelected"
      />
    </template>

    <template #headerLeft>
      <a-button-group>
        <a-button>
          <template #icon><PlusOutlined /></template>添加
        </a-button>
        <a-button>
          <template #icon><EditOutlined /></template>修改
        </a-button>
        <a-button>
          <template #icon><DeleteOutlined /></template>删除
        </a-button>
      </a-button-group>
    </template>

    <template #headerRight>
      <SearchInputButton
        v-model:text="searchText"
        placeholder="输入 菜单名称/地址 搜索"
      />
    </template>

    <template #contentRight>
      <PagDataTable
        :columns="columns"
        :dataSource="dataRows"
        rowKey="menuId"
        :total="dataTotal"
        :calcHeight="365"
        v-model:selectedRowKeys="tableSelectedRowKeys"
        v-model:selectedRows="tableSelectedRows"
        @loadData="loadDataByPage"
      ></PagDataTable>
    </template>
  </LeftRightLayout>
</template>

<style lang="scss" src="./List.scss" scoped></style>
<script lang="ts" src="./List.ts"></script>
