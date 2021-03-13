import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import BlogEntity from "../../model/blog/blogEntity";

class BlogController extends ControllerBase {
  /**
   * 获取博客列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<BlogEntity>>(
      "/blog/blog/list",
      searchWhere
    );
  }

  /**
   * 新增博客
   */
  add(data: BlogEntity) {
    return this.request.post("/blog/blog/", data);
  }

  /**
   * 根据id获取博客信息
   */
  getBlogById(id: bigint | number) {
    return this.request.get("/blog/blog/" + id);
  }

  /**
   * 编辑博客
   */
  edit(data: BlogEntity) {
    return this.request.put("/blog/blog", data);
  }

  /**
   * 根据id集合删除博客
   */
  deleteBlogByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/blog/blog/" + encodeURIComponent(idsStr));
  }
}

export default BlogController;
