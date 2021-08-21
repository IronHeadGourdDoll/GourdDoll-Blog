import ControllerBase from "../controllerBase";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import NoticeEntity from "../../model/system/notice/noticeEntity";

class noticeController extends ControllerBase {
  /**
   * 获取公告列表
   */
  getList(data: TableSearch) {
    const { pageNum, pageSize, quickText } = data;
    const searchWhere = {
      pageNum,
      pageSize,
      searchValue: quickText,
    };
    return this.request.get<TableResult<NoticeEntity>>(
      "/system/notice/list",
      searchWhere
    );
  }

  /**
   * 新增公告
   */
  add(data: NoticeEntity) {
    return this.request.post("/system/notice", data);
  }

  /**
   * 根据id获取公告信息
   */
  getNoticeById(id: bigint | number) {
    return this.request.get("/system/notice/" + id);
  }

  /**
   * 编辑公告
   */
  edit(data: NoticeEntity) {
    return this.request.put("/system/notice", data);
  }

  /**
   * 根据id集合删除公告
   */
  deleteNoticeByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/system/notice/" + encodeURIComponent(idsStr));
  }
}

export default noticeController;
