class BlogStatisticsEntity {
  /**
   * 主键
   */
  blogId!: bigint;

  /**
   * 阅读次数
   */
  readTimes?: bigint;

  /**
   * 点赞次数
   */
  likeTimes?: bigint;

  /**
   * 不喜欢次数
   */
  dislikeTimes?: bigint;

  /**
   * 评论次数
   */
  commentTimes?: bigint;
}

export default BlogStatisticsEntity;
