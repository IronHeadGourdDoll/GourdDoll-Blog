/**
 * 表格返回格式
 */
export default class TableResult<T = any> {
  /**
   * 总条数
   */
  total!: bigint;

  /**
   * 行数据
   */
  rows: Array<T> = [];
}
