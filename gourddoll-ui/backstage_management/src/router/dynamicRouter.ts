import router from "./constRouter";
import Empty from "@/share/extensionMethod/empty";
import store from "@/store";
import MenuTreeDto from "@/service/model/system/menu/menuTreeDto";
import { addMenuRoute } from "./operation";

const title = process.env.VUE_APP_TITLE;

const ignoreList = ["/login"]; //不需要跳转登录的路由

router.beforeEach(async (to, from, next) => {
  document.title = title;

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
