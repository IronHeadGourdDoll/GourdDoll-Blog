import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  id: null,
  categoryName: "",
  parentId: "",
  categoryType: "",
  status: "",
  orderNum: null,
  remark: "",
});

const rulesRef: any = reactive({
  categoryName: [
    {
      required: true,
      message: "请输入分类名",
    },
  ],
  categoryKey: [
    {
      message: "请输入父分类id",
    },
  ],
  orderNum: [
    {
      required: true,
    },
  ],
  status: [
    {
      message: "状态",
    },
  ],
  remark: [
    {
      message: "备注",
    },
  ],
});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
