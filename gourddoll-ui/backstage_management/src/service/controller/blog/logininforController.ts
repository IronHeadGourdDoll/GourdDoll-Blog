import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import LogininforEntity from "../../model/system/logininfor/logininforEntity";

class LogininforController extends ControllerBase {
  /**
   * 获取访问记录列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<LogininforEntity>>(
      "/system/logininfor/list",
      searchWhere
    );
  }

  /**
   * 新增访问记录
   */
  add(data: LogininforEntity) {
    return this.request.post("/system/logininfor", data);
  }

  /**
   * 根据id获取访问记录信息
   */
  getlogininforById(id: bigint | number) {
    return this.request.get("/system/logininfor/" + id);
  }

  /**
   * 编辑访问记录
   */
  edit(data: LogininforEntity) {
    return this.request.put("/system/logininfor", data);
  }

  /**
   * 根据id集合删除访问记录
   */
  deleteLogininforByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/system/logininfor/" + encodeURIComponent(idsStr));
  }
}

export default LogininforController;
