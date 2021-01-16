<template>
  <a-table
    class="pag-data-table"
    :scroll="{ x: true, y: true }"
    :columns="columns"
    :dataSource="dataSource"
    :pagination="pagination"
    @change="handlePaginationChange"
    :rowKey="rowKey"
    :row-selection="rowSelection"
  >
    <slot></slot>
  </a-table>
</template>

<style lang="scss">
.pag-data-table {
  .ant-table-scroll > .ant-table-body {
    overflow-x: auto !important;
    overflow-y: auto !important;
  }
  .ant-table-pagination {
    float: left !important;
  }
}
</style>
<style lang="scss" scoped>
.pag-data-table {
  width: 100%;
  height: 100%;
}
</style>

<script lang="ts" src="./PagDataTable.ts"></script>
