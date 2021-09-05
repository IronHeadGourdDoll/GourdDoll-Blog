import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import ServiceCommentEntity from "../../model/blog/serviceCommentEntity";

class ServiceCommentController extends ControllerBase {
  /**
   * 获取分类列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<ServiceCommentEntity>>(
      "/blog/comment/list",
      searchWhere
    );
  }

  /**
   * 根据博客id获取评论树
   */
  getTreeComment(id: bigint | number) {
    return this.request.get<Array<ServiceCommentEntity>>(
      "/blog/comment/list-tree/" + id
    );
  }

  /**
   * 新增分类
   */
  add(data: ServiceCommentEntity) {
    return this.request.post("/blog/comment", data);
  }

  /**
   * 根据id获取分类信息
   */
  getCommentById(id: bigint | number) {
    return this.request.get("/blog/comment/" + id);
  }

  /**
   * 编辑分类
   */
  edit(data: ServiceCommentEntity) {
    return this.request.put("/blog/comment/", data);
  }

  /**
   * 根据id集合删除分类
   */
  deleteCommentByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/blog/comment/" + encodeURIComponent(idsStr));
  }
}

export default ServiceCommentController;
