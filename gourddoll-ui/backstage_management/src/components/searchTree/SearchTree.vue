<template>
  <a-input-search
    placeholder="输入文本即时搜索"
    :allowClear="true"
    v-model:value="value"
  />
  <a-tree
    :checkable="false"
    :tree-data="searchData"
    :autoExpandParent="true"
    :defaultExpandAll="true"
    :defaultExpandParent="true"
    :replaceFields="{ children: 'children', title: 'label', key: 'id' }"
    @select="select"
  />
</template>

<script lang="ts" src="./SearchTree.ts"></script>
