<template>
  <div class="flex-container">
    <div class="head">
      <div class="left-head">
        <slot name="headerLeft"></slot>
      </div>
      <div class="right-head">
        <slot name="headerRight"></slot>
      </div>
    </div>
    <div class="content">
      <slot name="content"></slot>
    </div>
  </div>
</template>

<style lang="scss" src="./CurdLayout.scss" scoped></style>
<script lang="ts" src="./CurdLayout.ts"></script>
