import router from "@/router";
import cookie from "cookiejs";

/**
 * 退出清理
 */
export default function() {
  localStorage.clear();
  sessionStorage.clear();
  cookie.clear();
  router.push({ path: "/Login", replace: true });
}
