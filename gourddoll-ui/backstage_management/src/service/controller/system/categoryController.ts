import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import CategoryEntity from "../../model/blog/categoryEntity";

class CategoryController extends ControllerBase {
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
    return this.request.get<TableResult<CategoryEntity>>(
      "/blog/category/list",
      searchWhere
    );
  }

  /**
   * 新增分类
   */
  add(data: CategoryEntity) {
    return this.request.post("/blog/category", data);
  }

  /**
   * 根据id获取分类信息
   */
  getRoleById(id: bigint | number) {
    return this.request.get("/blog/category" + id);
  }

  /**
   * 编辑分类
   */
  edit(data: CategoryEntity) {
    return this.request.put("/blog/category", data);
  }

  /**
   * 根据id集合删除分类
   */
  deleteCategoryByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/blog/category" + encodeURIComponent(idsStr));
  }
}

export default CategoryController;
