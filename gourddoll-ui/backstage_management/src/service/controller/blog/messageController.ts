import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import LeaveMessageEntity from "../../model/blog/leaveMessageEntity";

class leaveController extends ControllerBase {
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
    return this.request.get<TableResult<LeaveMessageEntity>>(
      "/blog/leave/list",
      searchWhere
    );
  }

  /**
   * 新增角色
   */
  add(data: LeaveMessageEntity) {
    return this.request.post("/blog/leave", data);
  }

  /**
   * 根据id获取角色信息
   */
  getleaveById(id: bigint | number) {
    return this.request.get("/blog/leave/" + id);
  }

  /**
   * 编辑角色
   */
  edit(data: LeaveMessageEntity) {
    return this.request.put("/blog/leave", data);
  }

  /**
   * 根据id集合删除角色
   */
  deleteLeaveByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/blog/leave/" + encodeURIComponent(idsStr));
  }
}

export default leaveController;
