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
  getMenuList(data: TableSearch, parentId?: string | number) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
      parentId: parentId ?? 0,
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
  add(entity: MenuEntity) {
    return this.request.post("/system/menu", entity);
  }

  /**
   * 添加菜单
   * @param entity 菜单实体
   */
  edit(entity: MenuEntity) {
    return this.request.put("/system/menu", entity);
  }

  /**
   * 删除菜单
   * @param id 菜单标识
   */
  delete(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/system/menu/" + encodeURIComponent(idsStr));
  }

  /**
   * 根据id获取菜单信息
   */
  getMenuById(id: bigint | number) {
    return this.request.get("/system/menu/" + id);
  }
}

export default MenuController;
