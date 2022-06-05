import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import FolloweeEntity from "../../model/blog/FolloweeEntity";

class followeeController extends ControllerBase {
  /**
   * 获取关注列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<FolloweeEntity>>(
      "/blog/followee/list",
      searchWhere
    );
  }

  /**
   * 新增关注
   */
  add(data: FolloweeEntity) {
    return this.request.post("/blog/followee", data);
  }

  /**
   * 根据id获取关注信息
   */
  getfolloweeById(id: bigint | number) {
    return this.request.get("/blog/followee/" + id);
  }

  /**
   * 编辑关注
   */
  edit(data: FolloweeEntity) {
    return this.request.put("/blog/followee", data);
  }

  /**
   * 根据id集合删除关注
   */
  deletefolloweeByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/blog/followee/" + encodeURIComponent(idsStr));
  }
}

export default followeeController;
