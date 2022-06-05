import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import UserOnlineEntity from "../../model/system/userOnline/userOnlineEntity";

class UserOnlineController extends ControllerBase {
  /**
   * 获取在线用户列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<UserOnlineEntity>>(
      "/system/online/list",
      searchWhere
    );
  }

  /**
   * 根据id强退在线用户
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

export default UserOnlineController;
