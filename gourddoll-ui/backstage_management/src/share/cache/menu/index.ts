import MenuTreeDto from "@/service/model/menu/menuTreeDto";
import CacheHelp from "../cacheHelp";

const key = process.env.VUE_APP_MENU;
const cacheHelp = new CacheHelp<Array<MenuTreeDto>>(key);

export default class MenuCache {
  /**
   * 获取菜单
   */
  static get() {
    return cacheHelp.get();
  }

  /**
   * 设置菜单缓存
   */
  static set(data: Array<MenuTreeDto>) {
    cacheHelp.set(data);
  }

  /**
   * 删除菜单缓存
   */
  static remove() {
    cacheHelp.remove();
  }
}
