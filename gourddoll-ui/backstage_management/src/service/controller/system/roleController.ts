import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import RoleEntity from "../../model/system/role/roleEntity";

class RoleController extends ControllerBase {
  /**
   * 获取角色列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<RoleEntity>>(
      "/system/role/list",
      searchWhere
    );
  }

  /**
   * 新增角色
   */
  add(data: RoleEntity) {
    return this.request.post("/system/role", data);
  }

  /**
   * 根据id获取角色信息
   */
  getRoleById(id: bigint | number) {
    return this.request.get("/system/role/" + id);
  }

  /**
   * 编辑角色
   */
  edit(data: RoleEntity) {
    return this.request.put("/system/role", data);
  }

  /**
   * 根据id集合删除角色
   */
  deleteRoleByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/system/role/" + encodeURIComponent(idsStr));
  }
}

export default RoleController;
