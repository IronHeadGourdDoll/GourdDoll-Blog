import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";

const modelRef: any = reactive({
  noticeId: null,
  noticeTitle: "",
  noticeType: "",
  noticeContent: "",
  status: "",
});

const rulesRef: any = reactive({});
const { resetFields } = useForm(modelRef, rulesRef);

export { modelRef, rulesRef, resetFields };
