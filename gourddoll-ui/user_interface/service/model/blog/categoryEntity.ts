class CategoryEntity {
  /**
   * 分类ID
   */
  id!: bigint;

  /**
   * 分类名称
   */
  categoryName?: string;

  /**
   * 父分类ID
   */
  parentId?: bigint;

  /**
   * 分类类型（0博客 1资源）
   */
  categoryType?: string;

  /**
   * 分类状态（0正常 1停用）
   */
  status?: string;

  /**
   * 显示顺序
   */
  orderNum?: number;
}

export default CategoryEntity;
