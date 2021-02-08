import { reactive } from "vue";

const modelRef: any = reactive({
  menuName: "",
  pathCode: "",
  path: "",
  component: "",
  menuType: "C",
  visible: "true",
  status: "0",
  parentId: "",
  remark: "",
  orderNum: "",
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
  pathCode:[
    
  ]
});

export { modelRef, rulesRef };
