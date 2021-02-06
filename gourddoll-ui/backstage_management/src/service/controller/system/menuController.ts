import ControllerBase from "../controllerBase";
import MenuTreeDto from "../../model/system/menu/menuTreeDto";
import MenuEntity from "../../model/system/menu/menuEntity";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";

class MenuController extends ControllerBase {
  /**
   * 获取用户菜单
   */
  getUserMenu() {
    return this.request.get<Array<MenuTreeDto>>("/system/menu/treeselect-lv");
  }

  /**
   * 获取菜单树
   */
  getTreeMenu() {
    return this.request.get<Array<MenuTreeDto>>("/system/menu/treeselect");
  }

  /**
   * 获取菜单列表
   */
  getMenuList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      menuName: quickText,
      path: quickText,
    };
    return this.request.get<TableResult<MenuEntity>>(
      "/system/menu/list",
      searchWhere
    );
  }

  /**
   * 添加菜单
   * @param entity 菜单实体
   */
  addMenu(entity: MenuEntity) {
    return this.request.post("/system/menu", entity);
  }

  /**
   * 添加菜单
   * @param entity 菜单实体
   */
  editMenu(entity: MenuEntity) {
    return this.request.put("/system/menu", entity);
  }

  /**
   * 删除菜单
   * @param id 菜单标识
   */
  delete(id: number | bigint) {
    return this.request.delete("/system/menu", { menuId: id });
  }
}

export default MenuController;
