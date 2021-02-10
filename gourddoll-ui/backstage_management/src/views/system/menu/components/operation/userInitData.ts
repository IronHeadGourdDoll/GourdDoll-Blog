import { reactive } from "vue";
import { useForm } from "@ant-design-vue/use";
import MenuTypeEnum, {
  getMenuTypeMap,
} from "@/service/enumeration/menuTypeEnum";
import MenuStatusEnum, {
  getMenuStatusMap,
} from "@/service/enumeration/menuStatusEnum";

const modelRef: any = reactive({
  menuId: null,
  menuName: "",
  pathCode: "",
  path: "",
  component: "",
  menuType: MenuTypeEnum.menu,
  visible: true,
  status: MenuStatusEnum.enable,
  parentId: "",
  remark: "",
  orderNum: null,
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
      },
    },
  ],
});
const { resetFields } = useForm(modelRef, rulesRef);

export {
  modelRef,
  rulesRef,
  resetFields,
  getMenuTypeMap,
  getMenuStatusMap,
  MenuTypeEnum,
};
