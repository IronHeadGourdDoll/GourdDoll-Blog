import { toRaw, toRefs, SetupContext } from "vue";
import UserController from "@/service/controller/system/userController";
import {
  modelRef,
  resetFields,
  validate,
  validateInfos,
  getSexMap,
} from "../userInitData";

export default {
  name: "AddUser",
  props: {
    visible: Boolean,
  },
  setup(props: any, context: SetupContext) {
    const { visible } = toRefs(props);

    function onSubmit() {
      validate().then(() => {
        new UserController().add(toRaw(modelRef)).then(() => {
          context.emit("saveComplete");
          onCancel();
        });
      });
    }

    function onCancel() {
      context.emit("update:visible", false);
    }

    return {
      validateInfos,
      resetFields,
      modelRef,
      onSubmit,
      visible,
      sexMap: getSexMap(),
      onCancel,
    };
  },
};
