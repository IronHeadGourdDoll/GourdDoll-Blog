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
    <a-form-item label="姓名" v-bind="validateInfos.nickName">
      <a-input v-model:value="modelRef.nickName" />
    </a-form-item>
    <a-form-item label="用户名" v-bind="validateInfos.userName">
      <a-input
        :disabled="isDisabledUserName"
        v-model:value="modelRef.userName"
      />
    </a-form-item>
    <a-form-item
      v-if="isValidatePwd"
      label="密码"
      v-bind="validateInfos.password"
    >
      <a-input-password v-model:value="modelRef.password" />
    </a-form-item>
    <a-form-item v-else label="密码">
      <a-input-password
        placeholder="为空则不会修改密码"
        v-model:value="modelRef.password"
      />
    </a-form-item>
    <a-form-item label="性别">
      <a-select v-model:value="modelRef.sex" placeholder="请选择性别">
        <a-select-option
          v-for="([key, value], index) in sexMap.entries()"
          :value="key"
          :key="index"
        >
          {{ value }}
        </a-select-option>
      </a-select>
    </a-form-item>
    <a-form-item label="邮箱" v-bind="validateInfos.email">
      <a-input v-model:value="modelRef.email" />
    </a-form-item>
    <a-form-item label="电话" v-bind="validateInfos.phonenumber">
      <a-input v-model:value="modelRef.phonenumber" />
    </a-form-item>
    <a-form-item label="角色">
      <a-select
        v-model:value="modelRef.roleIds"
        mode="multiple"
        style="width: 100%"
        placeholder="Please select"
        :options="roles"
      />
    </a-form-item>
    <a-form-item label="部门">
      <a-tree-select
        v-model:value="modelRef.deptId"
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
    <a-form-item label="备注" name="desc">
      <a-textarea v-model:value="modelRef.remark" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts" src="./Operation.ts"></script>
