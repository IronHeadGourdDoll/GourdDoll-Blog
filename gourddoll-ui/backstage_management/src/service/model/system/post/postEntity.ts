import BaseEntity from "../../common/baseEntity";

class PostEntity extends BaseEntity {
  /**
   * 角色ID
   */
  postId!: bigint;

  /**
   * 角色名称
   */
  postCode?: string;

  /**
   * 角色权限
   */
  postName?: string;

  /**
   * 角色排序
   */
  postSort?: string;

  /**
   * 数据范围（1：所有数据权限；2：自定义数据权限；3：本部门数据权限；4：本部门及以下数据权限）
   */
  status?: string;
}

export default PostEntity;
