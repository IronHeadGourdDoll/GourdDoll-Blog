import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  id: null,
  title: "",
  author: "",
  summary: "",
  content: "",
  commend: "",
});

const rulesRef: any = reactive({
  title: [
    {
      required: true,
      message: "请输入标题",
    },
  ],
  author: [
    {
      required: true,
      message: "请输入作者",
    },
  ],
  summary: [
    {
      required: true,
      message: "请输入简介",
    },
  ],
  content: [
    {
      message: "内容",
    },
  ],
  commend: [
    {
      message: "是否推荐",
    },
  ],
});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
