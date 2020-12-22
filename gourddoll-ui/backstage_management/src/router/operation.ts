import { isUrl } from "@/share/util";
import Home from "@/views/Home.vue";
import EmptyContent from "@/views/layout/emptyContent/EmptyContent.vue";
import { RouteRecordRaw } from "vue-router";
import MenuTreeDto from "@/service/model/menu/menuTreeDto";
import router from "./constRouter";
import Empty from "@/share/extensionMethod/empty";

/**
 * 添加路由
 * @param menus 菜单
 */
export function addMenuRoute(menus: Array<MenuTreeDto>) {
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
      const request = menu.component;
      route.component = (() =>
        import(
          /* webpackChunkName: "[request]" */ `@/views/${request}.vue`
        )) as any;
    }
    const menuChildren: Array<RouteRecordRaw> = [];
    if (isExistChildren) {
      for (const sonMenu of menu.children) {
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
