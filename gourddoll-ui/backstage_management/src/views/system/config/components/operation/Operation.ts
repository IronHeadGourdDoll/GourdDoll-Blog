import { toRaw, SetupContext, ref, watch, reactive } from "vue";
import ConfigController from "@/service/controller/system/configController";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";
import operationTypeEnum, {
  getTitle,
} from "@/service/enumeration/operationTypeEnum";
import { modelRef, rulesRef, resetFields } from "./configInitData";
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
        configController.getConfigById(id).then((data) => {
          Object.assign(modelRef, data);
        });
      }
    }
    Emitter.on("changeOperation", load, moduleEnum.config);

    const configController = new ConfigController();

    function onSubmit() {
      validate().then(() => {
        let save!: Promise<any>;
        if (currentOperation.value == operationTypeEnum.add) {
          save = configController.add(toRaw(modelRef));
        } else if (currentOperation.value == operationTypeEnum.edit) {
          save = configController.edit(toRaw(modelRef));
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

    let validate: any;
    let validateInfos = reactive<any>({});

    const title = ref("");
    const isShowReset = ref(false);
    watch(
      currentOperation,
      function (v: operationTypeEnum) {
        title.value = getTitle(v, "参数");
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
    };
  },
};
