<template>
  <a-modal
    :visible="visible"
    :closable="true"
    :footer="null"
    :width="modalWidth"
    :title="title"
    :keyboard="false"
    :maskClosable="false"
    style="top: 20px"
  >
    <a-form
      :label-col="{ span: 4 }"
      :wrapper-col="{ span: 14 }"
      layout="horizontal"
      :style="{ width: formWidth + 'px' }"
    >
      <slot></slot>
      <a-form-item class="downBtn" :wrapper-col="{ span: 8, offset: 9 }">
        <a-button type="primary" @click="onSubmit">保存</a-button>
        <!-- <a-button type="danger" v-if="isReset" @click="onReset">重置</a-button> -->
        <a-button @click="onCancel">取消</a-button>
      </a-form-item>
    </a-form>
  </a-modal>
</template>

<style lang="scss" src="./FormModal.scss" scoped></style>
<script lang="ts" src="./FormModal.ts"></script>
