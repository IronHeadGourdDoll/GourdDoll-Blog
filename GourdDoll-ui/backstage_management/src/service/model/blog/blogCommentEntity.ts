class BlogCommentEntity {
  /**
   * 主键
   */
  id!: bigint;

  /**
   * 评论的博客
   */
  blogId!: BigInt;

  /**
   * 评论内容
   */
  content?: string;

  /**
   * 是谁评论的
   */
  commentator?: string;

  /**
   * 0直接评论blog_id的，其他都是回复的评论 的id
   */
  parent?: bigint;

  /**
   * 评论层级
   */
  layer?: bigint;

  /**
   * 左编码值
   */
  lft?: bigint;

  /**
   * 右编码值
   */
  rft?: bigint;
}
