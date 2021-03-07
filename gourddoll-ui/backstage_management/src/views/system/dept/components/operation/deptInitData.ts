import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  deptId: null,
  deptName: "",
  leader: "",
  phone: "",
  email: "",
  // status: true,
  parentId: "",
  remark: "",
  orderNum: null,
});

const rulesRef: any = reactive({
  deptName: [
    {
      required: true,
      message: "请输入名称",
    },
  ],
  orderNum: [
    {
      required: true,
      message: "请输入排序号",
    },
  ],
  parentId: [
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
  ],
});
const { resetFields } = useForm(modelRef, rulesRef);

export {
  modelRef,
  rulesRef,
  resetFields,
};
