import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import TagEntity from "../../model/blog/tagEntity";

class TagController extends ControllerBase {
  /**
   * 获取标签列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<TagEntity>>(
      "/blog/tag/list",
      searchWhere
    );
  }

  /**
   * 新增标签
   */
  add(data: TagEntity) {
    return this.request.post("/blog/tag/", data);
  }

  /**
   * 根据id获取标签信息
   */
  getTagById(id: bigint | number) {
    return this.request.get("/blog/tag/" + id);
  }

  /**
   * 编辑标签
   */
  edit(data: TagEntity) {
    return this.request.put("/blog/tag/", data);
  }

  /**
   * 根据id集合删除标签
   */
  deleteTagByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/blog/tag/" + encodeURIComponent(idsStr));
  }
}

export default TagController;
