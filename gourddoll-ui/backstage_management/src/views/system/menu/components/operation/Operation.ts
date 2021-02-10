import { toRaw, SetupContext, ref, watch, reactive, toRefs } from "vue";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";
import operationTypeEnum, {
  getTitle,
} from "@/service/enumeration/operationTypeEnum";
import {
  modelRef,
  rulesRef,
  resetFields,
  getMenuTypeMap,
  getMenuStatusMap,
  MenuTypeEnum,
} from "./userInitData";
import { useForm } from "@ant-design-vue/use";
import MenuController from "@/service/controller/system/menuController";

export default {
  name: "Operation",
  props: {
    visible: Boolean,
    treeData: Array,
    treeSelectedId: [String, Number],
  },
  setup(props: any, context: SetupContext) {
    let currentOperation = ref(operationTypeEnum.add);
    const { treeSelectedId } = toRefs(props);

    const menuController = new MenuController();

    function load({ type, id }: any) {
      currentOperation.value = type;
      if (currentOperation.value == operationTypeEnum.edit) {
        menuController.getMenuById(id).then((data) => {
          if (data.parentId === 0) data.parentId = "";
          Object.assign(modelRef, data);
        });
      } else if (currentOperation.value == operationTypeEnum.add) {
        modelRef.parentId = treeSelectedId.value;
      }
    }
    Emitter.on("changeOperation", load, moduleEnum.menu);

    function onSubmit() {
      validate().then(() => {
        let save!: Promise<any>;
        if (currentOperation.value == operationTypeEnum.add) {
          save = menuController.add(toRaw(modelRef));
        } else if (currentOperation.value == operationTypeEnum.edit) {
          save = menuController.edit(toRaw(modelRef));
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
        title.value = getTitle(v, "菜单");
        if (v == operationTypeEnum.add) {
          isShowReset.value = true;
        } else if (v == operationTypeEnum.edit) {
          isShowReset.value = false;
        }
      },
      { immediate: true }
    );

    const menuTypeBtn = MenuTypeEnum.button;
    watch(
      () => modelRef.menuType,
      function (newVal: any) {
        if (newVal !== menuTypeBtn) {
          rulesRef.path = [
            {
              required: true,
              message: "请输入地址",
            },
          ];
          rulesRef.parentId = [];
          resetValidate();
        } else {
          rulesRef.path = [];
          rulesRef.parentId = [
            {
              required: true,
              message: "请选择上级",
            },
            {
              validator: function (rule: any, value: any) {
                if (value == 0) return Promise.reject("请选择上级");
                return Promise.resolve();
              },
            },
          ];
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
      menuTypeMap: getMenuTypeMap(),
      menuStatusMap: getMenuStatusMap(),
      menuTypeBtn,
    };
  },
};
