import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  dictCode: null,
  dictSort: null,
  dictLabel: "",
  dictValue: "",
  dictType: "",
  cssClass: "",
  listClass: "",
  isDefault: "",
  status: "",
});

const rulesRef: any = reactive({
});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
