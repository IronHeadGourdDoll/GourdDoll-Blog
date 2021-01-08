import { reactive, toRaw, toRefs, SetupContext } from "vue";
import { useForm } from "@ant-design-vue/use";
import SexEnum, { getSexMap } from "@/service/enumeration/sexEnum";
import UserController from "@/service/controller/system/userController";
import FormModal from "@/components/formModal/FormModal.vue";

export default {
  name: "AddUser",
  props: {
    visible: Boolean,
  },
  components: {
    FormModal,
  },
  setup(props: any, context: SetupContext) {
    const { visible } = toRefs(props);

    const modelRef: any = reactive({
      nickName: "",
      userName: "",
      sex: SexEnum.none,
      email: "",
      phonenumber: "",
      admin: false,
      remark: "",
      password: "",
    });

    const rulesRef = reactive({
      nickName: [
        {
          required: true,
          message: "请输入姓名",
        },
      ],
      userName: [
        {
          required: true,
          message: "请输入用户名",
        },
      ],
      password: [
        {
          required: true,
          message: "请输入密码",
        },
      ],
      email: [
        {
          type: "email",
          message: "邮箱格式错误",
        },
      ],
      phonenumber: [
        {
          max: 11,
          message: "电话长度不可超过11位",
        },
      ],
    });

    const { resetFields, validate, validateInfos } = useForm(
      modelRef,
      rulesRef
    );

    function onSubmit() {
      validate().then(() => {
        new UserController().add(toRaw(modelRef)).then(() => {
          context.emit("saveComplete");
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
