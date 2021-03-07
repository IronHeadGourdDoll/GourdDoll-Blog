import ControllerBase from "../controllerBase";
import DeptTreeDto from "../../model/system/dept/deptTreeDto";
import DeptEntity from "../../model/system/dept/deptEntity";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";

class DeptController extends ControllerBase {
  /**
   * 获取用户菜单
   */
  getUserMenu() {
    return this.request.get<Array<DeptTreeDto>>("/system/dept/treeselect");
  }

  /**
   * 获取部门树
   */
  getTreeDept() {
    return this.request.get<Array<DeptTreeDto>>("/system/dept/treeselect");
  }

  /**
   * 获取菜单列表
   */
  getDeptList(data: TableSearch, parentId?: string | number) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
      parentId: parentId ?? 0,
    };
    return this.request.get<TableResult<DeptEntity>>(
      "/system/dept/list",
      searchWhere
    );
  }

  /**
   * 添加菜单
   * @param entity 菜单实体
   */
  add(entity: DeptEntity) {
    return this.request.post("/system/dept", entity);
  }

  /**
   * 添加菜单
   * @param entity 菜单实体
   */
  edit(entity: DeptEntity) {
    return this.request.put("/system/dept", entity);
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
    return this.request.delete("/system/dept/" + encodeURIComponent(idsStr));
  }

  /**
   * 根据id获取菜单信息
   */
  getDeptById(id: bigint | number) {
    return this.request.get("/system/dept/" + id);
  }
}

export default DeptController;
