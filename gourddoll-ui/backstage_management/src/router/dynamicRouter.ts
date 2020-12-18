import router from "./constRouter";
import Empty from "@/share/ExtensionMethod/empty";
import store from "@/store";
import { RouteRecordRaw } from "vue-router";
import MenuTreeDto from "@/service/model/menu/menuTreeDto";
import { isUrl } from "@/share/util";
import Home from "@/views/Home.vue";
import EmptyContent from "@/views/layout/emptyContent/EmptyContent.vue";


/**
 * 添加路由
 * @param menus 菜单
 */
function addMenuRoute(menus: Array<MenuTreeDto>) {
  function isIgnore(menu: MenuTreeDto) {
    if (isUrl(menu.path)) return true;
    if (menu.pathCode === "Dashboard") return true;
    return false;
  }

  function menuToRoute(menu: MenuTreeDto): RouteRecordRaw {
    const { id, label, icon, isFrame, isCache, perms } = menu;
    const route: RouteRecordRaw = {
      path: menu.path,
      name: menu.pathCode,
      redirect: "",
      meta: { id, label, icon, isFrame, isCache, perms }
    };

    const isExistChildren = !Empty.isArrayNull(menu.children);
    if (isExistChildren && menu.parentId == 0n) {
      route.component = Home as any;
    } else if (isExistChildren && menu.parentId != 0n) {
      route.component = EmptyContent as any;
    } else {
      route.component = (() => import(`@/views${menu.component}`)) as any;
    }
    const menuChildren: Array<RouteRecordRaw> = [];
    if (isExistChildren) {
      for (const sonMenu of menu.children!) {
        if (isIgnore(sonMenu)) continue;
        menuChildren.push(menuToRoute(sonMenu));
      }
    }
    if (menuChildren.length > 0) route.children = menuChildren;
    return route;
  }

  for (const menu of menus) {
    if (isIgnore(menu)) continue;
    const route = menuToRoute(menu);
    router.addRoute(route);
  }
}

const title = process.env.VUE_APP_TITLE;

const ignoreList = ['/login'] //不需要跳转登录的路由

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