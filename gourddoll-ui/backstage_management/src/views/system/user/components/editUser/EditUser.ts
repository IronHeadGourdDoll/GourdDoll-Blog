import { toRaw, toRefs, SetupContext } from "vue";
import UserController from "@/service/controller/system/userController";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";
import {
  modelRef,
  resetFields,
  validate,
  validateInfos,
  getSexMap,
} from "../userInitData";

export default {
  name: "EditUser",
  props: {
    visible: Boolean,
  },
  setup(props: any, context: SetupContext) {
    const { visible } = toRefs(props);

    const userController = new UserController();

    Emitter.on(
      "loadInfo",
      (id: number | bigint) => {
        userController.getUserById(id).then((data) => {
          data.password = "";
          Object.assign(modelRef, data);
        });
      },
      moduleEnum.user
    );

    function onSubmit() {
      validate().then(() => {
        userController.edit(toRaw(modelRef)).then(() => {
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
