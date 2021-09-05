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

});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
