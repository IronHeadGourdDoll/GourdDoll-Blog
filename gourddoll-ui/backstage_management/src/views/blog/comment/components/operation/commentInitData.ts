import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  id: null,
  content: null,
  parent: null,
  rate: null,
});

const rulesRef: any = reactive({
  content: [
    {
      required: true,
      message: "请输入内容",
    },
  ],
});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
