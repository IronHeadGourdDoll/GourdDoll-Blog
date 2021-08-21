import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import OperlogEntity from "../../model/system/operLog/operLogEntity";

class OperlogController extends ControllerBase {
  /**
   * 获取日志列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<OperlogEntity>>(
      "/system/operlog/list",
      searchWhere
    );
  }

  /**
   * 新增日志
   */
  add(data: OperlogEntity) {
    return this.request.post("/system/operlog", data);
  }

  /**
   * 根据id获取日志信息
   */
  getOperlogById(id: bigint | number) {
    return this.request.get("/system/operlog/" + id);
  }

  /**
   * 编辑日志
   */
  edit(data: OperlogEntity) {
    return this.request.put("/system/operlog", data);
  }

  /**
   * 根据id集合删除日志
   */
  deleteOperlogByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/system/operlog/" + encodeURIComponent(idsStr));
  }
}

export default OperlogController;
