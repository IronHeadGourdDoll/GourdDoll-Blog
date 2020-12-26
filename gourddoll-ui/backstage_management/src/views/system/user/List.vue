<template>
  <a-table
    :columns="columns"
    :data-source="data"
    :pagination="pagination"
    rowKey="userId"
  >
    <template #name="{ text }">
      <a>{{ text }}</a>
    </template>
  </a-table>
</template>

<style lang="scss" src="./List.scss" scoped></style>
<script lang="ts" src="./List.ts"></script>
