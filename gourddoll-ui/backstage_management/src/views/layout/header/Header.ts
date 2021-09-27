import store from "@/store";
import { Modal, message } from "ant-design-vue";
import { useRouter } from "vue-router";
import { reactive, createVNode } from "vue";
import { ExclamationCircleOutlined } from "@ant-design/icons-vue";

const router = useRouter();

const Header = {
  exitClear() {
    const closeLoad = message.loading("安全退出中···");
    store
      .dispatch("user/logout")
      .then(() => {
        closeLoad();
        router.push({ path: "/login", replace: true });
        message.destroy();
        message.success("安全退出成功", 0.8);
      })
      .catch(() => {
        closeLoad();
        message.error("安全退出失败");
      });
  },
  userExit() {
    Modal.confirm({
      title: "温馨提示",
      icon: createVNode(ExclamationCircleOutlined),
      content: "确定要退出吗？",
      okText: "确认",
      cancelText: "取消",
      onOk: this.exitClear,
    });
  },
};
export const rulesRef = reactive({
  nickName: [
    {
      required: true,
      message: "请输入姓名",
    },
  ],
  userName: [
    {
      required: true,
      message: "请输入用户名",
    },
  ],
  password: [
    {
      required: true,
      message: "请输入密码",
    },
  ],
  email: [
    {
      type: "email",
      message: "邮箱格式错误",
    },
  ],
  phonenumber: [
    {
      max: 11,
      message: "电话长度不可超过11位",
    },
  ],
});

export default Header;
