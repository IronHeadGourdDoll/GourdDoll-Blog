import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  id: null,
  content: "",
  parent: null,
  rate: null,
});

const rulesRef: any = reactive({
  // content: [//加上报错
  //   {
  //     required: true,
  //     message: "请输入内容",
  //   },
  // ],
});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
