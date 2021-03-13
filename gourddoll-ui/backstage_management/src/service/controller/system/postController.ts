import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import PostEntity from "../../model/system/post/postEntity";

class PostController extends ControllerBase {
  /**
   * 获取角色列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<PostEntity>>(
      "/system/post/list",
      searchWhere
    );
  }

  /**
   * 新增角色
   */
  add(data: PostEntity) {
    return this.request.post("/system/post", data);
  }

  /**
   * 根据id获取角色信息
   */
  getRoleById(id: bigint | number) {
    return this.request.get("/system/post/" + id);
  }

  /**
   * 编辑角色
   */
  edit(data: PostEntity) {
    return this.request.put("/system/post", data);
  }

  /**
   * 根据id集合删除角色
   */
  deletePostByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/system/post/" + encodeURIComponent(idsStr));
  }
}

export default PostController;
