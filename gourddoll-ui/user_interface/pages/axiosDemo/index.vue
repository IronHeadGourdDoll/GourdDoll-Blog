<template>
  <div>
    <span> {{ msg }} </span>
    <a-button type="primary" @click="change">改变内容</a-button>
    <a-button type="primary" @click="refresh">Refresh</a-button>
  </div>
</template>

<script lang="ts" src="./axiosDemo.ts"></script>