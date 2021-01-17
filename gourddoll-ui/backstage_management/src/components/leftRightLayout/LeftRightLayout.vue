<template>
  <div class="flex-container">
    <div class="left-side" :style="{ borderColor: borderColor }">
      <slot name="contentLeft"></slot>
    </div>
    <div class="right-side">
      <div class="head">
        <div class="left-head">
          <slot name="headerLeft"></slot>
        </div>
        <div class="right-head">
          <slot name="headerRight"></slot>
        </div>
      </div>
      <div class="content">
        <slot name="contentRight"></slot>
      </div>
    </div>
  </div>
</template>

<style lang="scss" src="./LeftRightLayout.scss" scoped></style>
<script lang="ts" src="./LeftRightLayout.ts"></script>
