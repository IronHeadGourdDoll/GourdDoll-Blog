class LinkEntity {
  /**
   * 主键
   */
  id!: bigint;

  /**
   * 友链用户名
   */
  userName?: string;

  /**
   * 被友链用户名
   */
  linkedUsername?: string;

  /**
   * 被友链地址
   */
  url?: string;

  /**
   * 简述
   */
  summary?: string;

  /**
   * 被友链头像
   */
  img?: string;

  /**
   * 1表示审核通过,0表示未审核
   */
  status?: number;

  /**
   * 权重
   */
  weight?: bigint;

  /**
   * 是否显示
   */
  display?: number;

  /**
   * 邮箱
   */
  email?: string;
}

export default LinkEntity;
