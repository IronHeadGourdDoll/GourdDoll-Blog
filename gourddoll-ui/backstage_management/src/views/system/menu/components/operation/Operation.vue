<template>
  <FormModal
    :modalWidth="580"
    :title="title"
    :visible="visible"
    @save="onSubmit"
    @reset="resetForm"
    @cancel="onCancel"
    :isReset="isShowReset"
  >
    <a-form-item label="上级菜单" v-bind="validateInfos.parentId">
      <a-tree-select
        v-model:value="modelRef.parentId"
        :tree-data="treeData"
        placeholder="请选择"
        :allowClear="true"
        :replaceFields="{
          children: 'children',
          title: 'label',
          key: 'id',
          value: 'id',
        }"
      >
      </a-tree-select>
    </a-form-item>
    <a-form-item label="名称" v-bind="validateInfos.menuName">
      <a-input v-model:value="modelRef.menuName" />
    </a-form-item>
    <a-form-item label="编码">
      <a-input v-model:value="modelRef.pathCode" />
    </a-form-item>
    <div v-if="modelRef.menuType !== 'F'">
      <a-form-item label="地址" v-bind="validateInfos.path">
        <a-input v-model:value="modelRef.path" />
      </a-form-item>
      <a-form-item label="组件地址">
        <a-input v-model:value="modelRef.component" />
      </a-form-item>
    </div>
    <a-form-item label="类型">
      <a-select v-model:value="modelRef.menuType" placeholder="请选择">
        <a-select-option value="C" key="C">菜单</a-select-option>
        <a-select-option value="F" key="F">按钮</a-select-option>
      </a-select>
    </a-form-item>
    <a-form-item label="是否显示">
      <a-select v-model:value="modelRef.visible" placeholder="请选择">
        <a-select-option value="true" key="true">是</a-select-option>
        <a-select-option value="false" key="false">否</a-select-option>
      </a-select>
    </a-form-item>
    <a-form-item label="状态">
      <a-select v-model:value="modelRef.status" placeholder="请选择">
        <a-select-option value="0" key="0">正常</a-select-option>
        <a-select-option value="1" key="1">停用</a-select-option>
      </a-select>
    </a-form-item>
    <a-form-item label="备注" name="desc">
      <a-textarea v-model:value="modelRef.remark" />
    </a-form-item>
    <a-form-item label="排序号">
      <a-input v-model:value="modelRef.orderNum" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
