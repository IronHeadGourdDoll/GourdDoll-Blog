<template>
  <a-select
    v-model:value="value"
    mode="multiple"
    style="width: 100%"
    placeholder="Please select"
    :options="options"
  />
</template>
<script lang="ts" src="./MulSelect.ts"></script>