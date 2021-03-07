export default class DeptTreeDto {
  /**
   * 部门ID
   */
  deptId!: bigint;

  /*
   *父部门ID
   */
  parentId?: bigint;

  /**
   * 祖级列表
   */
  ancestors?: string;

  /**
   * 部门名称
   */
  deptName?: string;

  /**
   * 显示顺序
   */
  orderNum?: string;

  /**
   * 负责人
   */
  leader?: string;

  /**
   * 联系电话
   */
  phone?: string;

  /**
   * 邮箱
   */
  email?: string;

  /**
   * 部门状态:0正常,1停用
   */
  status?: string;

  /**
   * 删除标志（0代表存在 2代表删除）
   */
  delFlag?: string;

  /**
   * 父部门名称
   */
  parentName?: string;

  /**
   * 子部门
   */
  children: Array<DeptTreeDto> = [];
}
