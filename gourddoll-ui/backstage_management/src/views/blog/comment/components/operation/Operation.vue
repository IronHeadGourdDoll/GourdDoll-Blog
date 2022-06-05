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
    <a-form-item label="博客标题">
      <a-select
        v-model:value="modelRef.serviceId"
        show-search
        @change="handleChange"
      >
        <a-select-option v-for="item in services" :key="item.value">
          {{ item.label }}
        </a-select-option>
      </a-select>
    </a-form-item>
    <a-form-item label="评论内容" v-bind="validateInfos.content">
      <a-textarea v-model:value="modelRef.content" />
    </a-form-item>
    <a-form-item label="评分">
      <a-rate v-model:value="modelRef.rate" />
      <!-- <span class="ant-rate-text">allowClear: true</span> -->
    </a-form-item>
    <!-- <a-form-item label="上级id" v-bind="validateInfos.parent">
      <a-input v-model:value="modelRef.parent" />
    </a-form-item> -->
    <a-form-item label="状态" v-bind="validateInfos.status">
      <a-input v-model:value="modelRef.status" />
    </a-form-item>
    <a-form-item label="备注" name="desc">
      <a-textarea v-model:value="modelRef.remark" />
    </a-form-item>
  </FormModal>
</template>

<script lang="ts">
import {
  toRaw,
  SetupContext,
  ref,
  watch,
  reactive,
  onMounted,
  onUnmounted,
} from "vue";
import ServiceCommentController from "@/service/controller/blog/serviceCommentController";
import BlogController from "@/service/controller/blog/blogController";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";
import operationTypeEnum, {
  getTitle,
} from "@/service/enumeration/operationTypeEnum";
import { modelRef, rulesRef, resetFields } from "./commentInitData";
import { useForm } from "@ant-design-vue/use";

export default {
  name: "Operation",
  props: {
    visible: Boolean,
  },
  setup(props: any, context: SetupContext) {
    let currentOperation = ref(operationTypeEnum.add);

    function load({ type, id }: any) {
      currentOperation.value = type;
      if (currentOperation.value == operationTypeEnum.edit) {
        serviceCommentController.getCommentById(id).then((data) => {
          Object.assign(modelRef, data);
        });
      }
    }
    console.log(Emitter, 1111111111111111111111);
    onMounted(() => {
      Emitter.on("changeOperation", load, moduleEnum.comment);
    });

    onUnmounted(() => {
      //Emitter.("changeOperation", load, moduleEnum.comment);
    });

    const serviceCommentController = new ServiceCommentController();
    const blogController = new BlogController();

    const services = ref<
      Array<{ value: any; label: any; disabled: boolean; key: any; title: any }>
    >([]);
    function LoadServices() {
      blogController
        .getList({
          quickText: "",
          pageNum: 1,
          pageSize: 20,
        })
        .then((data) => {
          const selects = [];
          for (const { title, id } of data.rows) {
            selects.push({
              value: id,
              label: title,
              key: id,
              title: title,
              disabled: false,
            });
          }
          services.value = selects;
        });
    }
    LoadServices();

    function onSubmit() {
      validate().then(() => {
        let save!: Promise<any>;
        if (currentOperation.value == operationTypeEnum.add) {
          save = serviceCommentController.add(toRaw(modelRef));
        } else if (currentOperation.value == operationTypeEnum.edit) {
          save = serviceCommentController.edit(toRaw(modelRef));
        }
        save.then(() => {
          context.emit("saveComplete");
          onCancel();
        });
      });
    }

    function onCancel() {
      context.emit("update:visible", false);
    }

    const handleChange = (value: bigint, title: any) => {
      console.log(`selected ${value}`);
      modelRef.serviceName = title.children[0].children;
    };

    let validate: any;
    let validateInfos = reactive<any>({});

    const title = ref("");
    const isShowReset = ref(false);
    watch(
      currentOperation,
      function (v: operationTypeEnum) {
        title.value = getTitle(v, "评论");
        if (v == operationTypeEnum.add) {
          isShowReset.value = true;
          resetValidate();
        } else if (v == operationTypeEnum.edit) {
          isShowReset.value = false;
          resetValidate();
        }
      },
      { immediate: true }
    );

    function resetValidate() {
      const antForm = useForm(modelRef, rulesRef);
      Object.assign(validateInfos, antForm.validateInfos);
      validate = antForm.validate;
    }

    function resetForm() {
      resetFields();
      resetValidate();
    }

    return {
      validateInfos,
      resetForm,
      modelRef,
      onSubmit,
      onCancel,
      currentOperation,
      title,
      isShowReset,
      services,
      handleChange,
    };
  },
};
</script>
