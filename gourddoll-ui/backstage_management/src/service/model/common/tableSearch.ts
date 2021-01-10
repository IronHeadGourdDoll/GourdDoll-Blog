/**
 * 表格搜索
 */
export default interface TableSearch {
  /**
   * 快捷搜索文本
   */
  quickText?: string;

  /**
   * 当前页码
   */
  pageNum: number;

  /**
   * 每页条数
   */
  pageSize: number;
}
