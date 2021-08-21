class BaseEntity{
  /**
   * 搜索值
   */
  searchValue?: string;

  /**
   * 创建者
   */
  createBy?: string;

  /**
   * 创建时间
   */
  createTime?: string;

  /**
   * 更新者
   */
  updateBy?: string;

  /**
   * 更新时间
   */
  updateTime?: string;

  /**
   * 备注
   */
  remark?: string;

  /**
   * 开始时间
   */
  beginTime?: string;

  /**
   * 结束时间
   */
  endTime?: string;

  /**
   * 当前页码
   */
  pageNum?: number;

  /**
   * 每页条数
   */
  pageSize?: number;
}

export default BaseEntity;
