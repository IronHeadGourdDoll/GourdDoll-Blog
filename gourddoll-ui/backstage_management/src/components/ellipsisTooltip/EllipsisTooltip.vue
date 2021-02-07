<template>
  <a-tooltip>
    <template #title>{{ title }}</template>
    <span :style="{ width: width + 'px' }" class="text-ellipsis">
      {{ title }}
    </span>
  </a-tooltip>
</template>

<script lang="ts" src="./EllipsisTooltip.ts"></script>
