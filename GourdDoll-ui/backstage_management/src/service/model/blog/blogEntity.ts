class BlogEntity {
  /**
   * 博客id
   */
  id!: bigint;

  /**
   * 标题
   */
  title?: string;

  /**
   * 作者
   */
  author?: string;

  /**
   * 简介
   */
  summary?: string;

  /**
   * 内容
   */
  content?: string;

  /**
   * 是否推荐，0不推荐，1推荐
   */
  commend?: string;

  /**
   * 文章状态，1表示已经发表，0表示在草稿箱，2表示在垃圾箱
   */
  status?: number;

  /**
   * 博客预览图
   */
  headerImg?: string;

  /**
   * 分类id
   */
  categoryId?: string;
}

export default BlogEntity;
