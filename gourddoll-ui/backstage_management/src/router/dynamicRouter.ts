import router from "./constRouter";
import Empty from "@/share/extensionMethod/empty";
import MenuTreeDto from "@/service/model/system/menu/menuTreeDto";
import { addMenuRoute } from "./operation";
import store from "@/store";

const title = process.env.VUE_APP_TITLE;

const ignoreList = ["/login"]; //不需要跳转登录的路由

router.beforeEach(async (to, from, next) => {
  if (to.meta.label) {
    document.title = `${to.meta.label}-${title}`;
  } else {
    document.title = title;
  }

  const token = await store.dispatch("user/getToken");
  const tokenIsNull = Empty.isStringNull(token);

  if (tokenIsNull) {
    if (!ignoreList.includes(to.path)) {
      next({ path: "/login", replace: true });
      return;
    }
  } else {
    const { menu } = store.getters;
    if (Empty.isArrayNull(menu)) {
      const menus = await store.dispatch("user/getMenu");
      addMenuRoute(menus as Array<MenuTreeDto>);
      next({ ...to, replace: true });
      return;
    }
  }

  next();
});
