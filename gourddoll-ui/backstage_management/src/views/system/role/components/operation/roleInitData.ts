import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  roleId: null,
  roleName: "",
  roleKey: "",
  roleSort: "",
  status: "",
  remark: "",
});

const rulesRef: any = reactive({
  roleName: [
    {
      required: true,
      message: "请输入角色名",
    },
  ],
  roleKey: [
    {
      required: true,
      message: "请输入角色权限标识符",
    },
  ],
  roleSort: [
    {
      required: true,
      message: "请输入编排序号",
    },
  ],
  status: [
    {
      message: "状态",
    },
  ],
});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
