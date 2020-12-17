import router from "./constRouter";
import Empty from "@/share/ExtensionMethod/empty";
import store from "@/store";

const title = process.env.VUE_APP_TITLE;

router.beforeEach(async (to, from, next) => {

  document.title = title;

  const token = await store.dispatch("user/getToken");
  const tokenIsNull = Empty.isStringNull(token);

  if (!Object.is(to.path, "/Login") && tokenIsNull) {
    next({ path: "/Login", replace: true });
    return;
  }

  next();
});
