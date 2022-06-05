import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import MedalEntity from "../../model/blog/MedalEntity";

class MedalController extends ControllerBase {
  /**
   * 获取勋章列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<MedalEntity>>(
      "/blog/medal/list",
      searchWhere
    );
  }

  /**
   * 新增勋章
   */
  add(data: MedalEntity) {
    return this.request.post("/blog/medal", data);
  }

  /**
   * 根据id获取勋章信息
   */
  getmedalById(id: bigint | number) {
    return this.request.get("/blog/medal/" + id);
  }

  /**
   * 编辑勋章
   */
  edit(data: MedalEntity) {
    return this.request.put("/blog/medal", data);
  }

  /**
   * 根据id集合删除勋章
   */
  deleteMedalByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/blog/medal/" + encodeURIComponent(idsStr));
  }
}

export default MedalController;
