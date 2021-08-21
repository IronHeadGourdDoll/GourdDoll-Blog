import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import LinkEntity from "../../model/blog/linkEntity";

class LinkController extends ControllerBase {
  /**
   * 获取友链列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<LinkEntity>>(
      "/blog/link/list",
      searchWhere
    );
  }

  /**
   * 新增友链
   */
  add(data: LinkEntity) {
    return this.request.post("/blog/link", data);
  }

  /**
   * 根据id获取友链信息
   */
  getLinkById(id: bigint | number) {
    return this.request.get("/blog/link/" + id);
  }

  /**
   * 编辑友链
   */
  edit(data: LinkEntity) {
    return this.request.put("/blog/link", data);
  }

  /**
   * 根据id集合删除友链
   */
  deleteLinkByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/blog/link/" + encodeURIComponent(idsStr));
  }
}

export default LinkController;
