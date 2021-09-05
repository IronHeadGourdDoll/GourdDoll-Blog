import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import DictDataEntity from "../../model/system/dictData/dictDataEntity";

class DictDataController extends ControllerBase {
  /**
   * 获取字典数据列表
   */
  getList(data: any) {
    const { modelRef } = data;
    console.log("data========", data);
    return this.request.get<TableResult<DictDataEntity>>(
      "/system/dict/data/list",
      modelRef
    );
  }

  /**
   * 新增字典数据
   */
  add(data: DictDataEntity) {
    return this.request.post("/system/dict/data", data);
  }

  /**
   * 根据id获取字典数据
   */
  getDictDataById(id: bigint | number) {
    return this.request.get("/system/dict/data/" + id);
  }

  /**
   * 编辑字典数据
   */
  edit(data: DictDataEntity) {
    return this.request.put("/system/dict/data", data);
  }

  /**
   * 根据id集合删除字典数据
   */
  deleteDictDataByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete(
      "/system/dict/data/" + encodeURIComponent(idsStr)
    );
  }
}

export default DictDataController;
