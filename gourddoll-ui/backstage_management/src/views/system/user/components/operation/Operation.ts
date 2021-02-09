import { toRaw, SetupContext, ref, watch, reactive } from "vue";
import UserController from "@/service/controller/system/userController";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";
import operationTypeEnum,
{ getTitle, } from "@/service/enumeration/operationTypeEnum";
import { modelRef, rulesRef, getSexMap, resetFields } from "./userInitData";
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
        userController.getUserById(id).then((data) => {
          data.password = "";
          Object.assign(modelRef, data);
        });
      }
    }
    Emitter.on("changeOperation", load, moduleEnum.user);

    const userController = new UserController();

    function onSubmit() {
      validate().then(() => {
        let save!: Promise<any>;
        if (currentOperation.value == operationTypeEnum.add) {
          save = userController.add(toRaw(modelRef));
        } else if (currentOperation.value == operationTypeEnum.edit) {
          save = userController.edit(toRaw(modelRef));
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
    const isDisabledUserName = ref(false);
    const isValidatePwd = ref(true);
    watch(
      currentOperation,
      function (v: operationTypeEnum) {
        title.value = getTitle(v, "用户");
        if (v == operationTypeEnum.add) {
          isShowReset.value = true;
          isDisabledUserName.value = false;
          isValidatePwd.value = true;
          rulesRef.password = [
            {
              required: true,
              message: "请输入密码",
            },
          ];
          resetValidate();
        } else if (v == operationTypeEnum.edit) {
          isShowReset.value = false;
          isDisabledUserName.value = true;
          isValidatePwd.value = false;
          rulesRef.password = [];
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
      sexMap: getSexMap(),
      onCancel,
      currentOperation,
      title,
      isShowReset,
      isDisabledUserName,
      isValidatePwd,
    };
  },
};
