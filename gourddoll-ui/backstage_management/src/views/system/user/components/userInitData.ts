import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";
import SexEnum, { getSexMap } from "@/service/enumeration/sexEnum";

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

const rulesRef: any = reactive({
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

const { resetFields, validate, validateInfos } = useForm(modelRef, rulesRef);

export { modelRef, resetFields, validate, validateInfos, getSexMap };