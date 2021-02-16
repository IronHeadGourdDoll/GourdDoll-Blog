/**
 * 表格返回格式
 */
export default interface TableResult<T = any> {
  /**
   * 总条数
   */
  total: bigint | number;

  /**
   * 行数据
   */
  rows: Array<T>;
}
