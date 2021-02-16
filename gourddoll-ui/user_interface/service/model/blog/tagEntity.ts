class TagEntity {
  /**
   * 主键
   */
  id!: bigint;

  /**
   * 标签名
   */
  tagName?: string;

  /**
   * 描述
   */
  description?: string;
}

export default TagEntity;
