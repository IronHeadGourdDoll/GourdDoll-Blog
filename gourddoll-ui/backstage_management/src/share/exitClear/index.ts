import router from "@/router";
import cookie from "cookiejs";
import UserController from "@/service/controller/user/userController";
import { message } from 'ant-design-vue';

/**
 * 退出清理
 */
export default function () {
  const closeLoad = message.loading("安全退出中···");
  const logout = new UserController().logout();
  logout.then(() => {
    localStorage.clear();
    sessionStorage.clear();
    cookie.clear();
    closeLoad();
    router.push({ path: "/Login", replace: true });
    message.success("安全退出成功", 0.8);
  }).catch(() => {
    closeLoad();
    message.error("安全退出失败");
  });
}
