import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import ConfigEntity from "../../model/system/config/configEntity";

class ConfigController extends ControllerBase {
  /**
   * 获取参数列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<ConfigEntity>>(
      "/system/config/list",
      searchWhere
    );
  }

  /**
   * 新增参数
   */
  add(data: ConfigEntity) {
    return this.request.post("/system/config", data);
  }

  /**
   * 根据id获取参数信息
   */
  getConfigById(id: bigint | number) {
    return this.request.get("/system/config/" + id);
  }

  /**
   * 编辑参数
   */
  edit(data: ConfigEntity) {
    return this.request.put("/system/config", data);
  }

  /**
   * 根据id集合删除参数
   */
  deleteConfigByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/system/config/" + encodeURIComponent(idsStr));
  }
}

export default ConfigController;
