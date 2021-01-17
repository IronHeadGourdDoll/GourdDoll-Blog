<template>
  <LeftRightLayout>
    <template #contentLeft>
      <a-tree
        v-model:checkedKeys="checkedKeys"
        checkable
        :expanded-keys="expandedKeys"
        :auto-expand-parent="autoExpandParent"
        :selected-keys="selectedKeys"
        :tree-data="treeData"
        @expand="onExpand"
        @select="onSelect"
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
      <SearchInputButton placeholder="输入 菜单名称 搜索" />
    </template>

    <template #contentRight>
      <PagDataTable :total="100" :calcHeight="335"></PagDataTable>
    </template>
  </LeftRightLayout>
</template>

<style lang="scss" src="./List.scss" scoped></style>
<script lang="ts" src="./List.ts"></script>
