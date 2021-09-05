import {
  toRaw,
  SetupContext,
  ref,
  watch,
  reactive,
  defineComponent,
} from "vue";
import UserController from "@/service/controller/system/userController";
import RoleController from "@/service/controller/system/roleController";
import DeptController from "@/service/controller/system/deptController";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";
import operationTypeEnum, {
  getTitle,
} from "@/service/enumeration/operationTypeEnum";
import { modelRef, rulesRef, getSexMap, resetFields } from "./userInitData";
import { useForm } from "@ant-design-vue/use";

export default {
  name: "Operation",
  props: {
    visible: Boolean,
    treeData: Array,
    treeSelectedId: [String, Number],
    // options: Array,
    roles: Array,
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
    const roleController = new RoleController();
    const deptController = new DeptController();

    // const options: { value: string; disabled: boolean }[] = [];
    // for (let i = 0; i < 10000; i++) {
    //   const value = `${i.toString(36)}${i}`;
    //   options.push({
    //     value,
    //     disabled: i === 10,
    //   });
    // }

    const treeData = ref<Array<any>>([]);
    function LoadTreeDept() {
      deptController.getTreeDept().then((data) => {
        treeData.value = data;
      });
    }
    LoadTreeDept();

    const roles = ref<
      Array<{
        value: any;
        label: string;
        disabled: boolean;
        key: any;
        title: string;
      }>
    >([]);
    function LoadRoles() {
      roleController
        .getList({
          quickText: "",
          pageNum: 1,
          pageSize: 20,
        })
        .then((data) => {
          const selects = [];
          for (const { roleName, roleId } of data.rows) {
            selects.push({
              value: roleId,
              label: roleName,
              key: roleId,
              title: roleName,
              disabled: false,
            });
          }
          roles.value = selects;
        });
    }
    LoadRoles();

    LoadTreeDept();

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
      modelRef, //用户对象
      onSubmit,
      sexMap: getSexMap(),
      onCancel,
      currentOperation,
      title,
      isShowReset,
      isDisabledUserName,
      isValidatePwd,
      treeData,
      roles,
    };
  },
};
