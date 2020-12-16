import router from "./constRouter";
import { getToken } from "@/share/token";

const title = process.env.VUE_APP_TITLE;

router.beforeEach((to, from, next) => {

  document.title = title;

  const token = getToken();
  const isTokenInvalid =
    Object.is(token, undefined) ||
    Object.is(token, null) ||
    Object.is(token, "");

  if (!Object.is(to.path, "/Login") && isTokenInvalid) {
    next({ path: "/Login", replace: true });
    return;
  }

  next();
});
