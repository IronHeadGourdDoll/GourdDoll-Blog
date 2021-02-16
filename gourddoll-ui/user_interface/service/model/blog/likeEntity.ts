class LikeEntity {
  /**
   * 主键
   */
  id!: bigint;

  /**
   * 业务类型，1博客，2评论，3留言
   */
  bizType?: bigint;

  /**
   * 业务id
   */
  bizId?: bigint;

  /**
   * 对评论 点赞或点踩 的人
   */
  userName?: string;

  /**
   * 0代表踩，1代表赞
   */
  status?: number;
}

export default LikeEntity;
