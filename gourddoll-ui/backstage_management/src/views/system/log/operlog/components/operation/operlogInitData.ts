import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  operId: null,
  rotitleleName: "",
  method: "",
  requestMethod: "",
  operName: "",
});

const rulesRef: any = reactive({
});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
