import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  id: null,
  userName: "",
  linkedUsername: "",
  url: "",
  summary: "",
});

const rulesRef: any = reactive({

});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
