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
    <a-form-item label="名称" v-bind="validateInfos.menuName">
      <a-input v-model:value="modelRef.menuName" />
    </a-form-item>
    <a-form-item label="编码">
      <a-input v-model:value="modelRef.pathCode" />
    </a-form-item>
    <div v-if="modelRef.menuType !== menuTypeBtn">
      <a-form-item label="地址" v-bind="validateInfos.path">
        <a-input v-model:value="modelRef.path" />
      </a-form-item>
      <a-form-item label="组件地址">
        <a-input v-model:value="modelRef.component" />
      </a-form-item>
    </div>

    <div class="ant-form ant-form-inline" style="padding-bottom: 24px">
      <a-row>
        <a-form-item
          label="类型"
          :labelCol="{ span: 4, offset: 6 }"
          class="ant-col ant-col-10"
          style="margin-right: 0px; position: relative; left: -1px"
        >
          <a-select
            style="width: 155px"
            v-model:value="modelRef.menuType"
            placeholder="请选择"
          >
            <a-select-option
              v-for="([key, value], index) in menuTypeMap.entries()"
              :value="key"
              :key="index"
            >
              {{ value }}
            </a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item
          label="状态"
          :labelCol="{ span: 8, offset: 1 }"
          class="ant-col ant-col-12"
          style="margin-right: 0px"
        >
          <a-select
            style="width: 155px"
            v-model:value="modelRef.status"
            placeholder="请选择"
          >
            <a-select-option
              v-for="([key, value], index) in menuStatusMap.entries()"
              :value="key"
              :key="index"
            >
              {{ value }}
            </a-select-option>
          </a-select>
        </a-form-item>
      </a-row>
    </div>

    <a-form-item label="是否显示">
      <a-switch
        checked-children="是"
        un-checked-children="否"
        v-model:checked="modelRef.visible"
      />
    </a-form-item>
    <a-form-item label="备注" name="desc">
      <a-textarea v-model:value="modelRef.remark" />
    </a-form-item>
    <a-form-item label="排序号">
      <a-input-number v-model:value="modelRef.orderNum" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
