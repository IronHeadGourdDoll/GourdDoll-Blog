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
    <a-form-item label="上级节点" v-bind="validateInfos.parentId">
      <a-tree-select
        v-model:value="modelRef.parentId"
        :tree-data="treeData"
        placeholder="请选择"
        :allowClear="true"
        treeNodeFilterProp="label"
        :replaceFields="{
          children: 'children',
          title: 'label',
          key: 'id',
          value: 'id',
        }"
      >
      </a-tree-select>
    </a-form-item>
    <a-form-item label="名称" v-bind="validateInfos.deptName">
      <a-input v-model:value="modelRef.deptName" />
    </a-form-item>
    <a-form-item label="部门负责人" v-bind="validateInfos.leader">
      <a-input v-model:value="modelRef.leader" />
    </a-form-item>
    <a-form-item label="排序号">
      <a-input-number v-model:value="modelRef.orderNum" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
