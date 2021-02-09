import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  menuName: "",
  pathCode: "",
  path: "",
  component: "",
  menuType: "C",
  visible: "true",
  status: "0",
  parentId: "",
  remark: "",
  orderNum: "",
});

const rulesRef: any = reactive({
  menuName: [
    {
      required: true,
      message: "请输入名称",
    },
  ],
  path: [
    {
      required: true,
      message: "请输入地址",
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
      }
    }
  ]
});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
