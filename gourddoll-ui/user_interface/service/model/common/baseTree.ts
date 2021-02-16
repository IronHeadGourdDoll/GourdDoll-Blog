import BaseEntity from "./baseEntity";

class BaseTree extends BaseEntity {
  /**
   * 父级名称
   */
  parentName?: string;

  /**
   * 父级ID
   */
  parentId?: bigint;

  /**
   * 显示顺序
   */
  orderNum?: string;

  /**
   * 祖级列表
   */
  ancestors?: string;

  /**
   * 子节点
   */
  children: Array<BaseTree> = [];
}

export default BaseTree;
