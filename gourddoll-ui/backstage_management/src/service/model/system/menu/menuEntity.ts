import BaseEntity from "../../common/baseEntity";

class MenuEntity extends BaseEntity {
  /**
   * 菜单ID
   */
  menuId!: bigint | number;

  /**
   * 名称
   */
  menuName!: string;

  /**
   * 菜单跳转地址
   */
  path!: string;

  /**
   * 菜单代码
   */
  pathCode?: string;

  /**
   * 组件地址
   */
  component?: string;

  /**
   *
   */
  remark?: string;

  /**
   * 父级名称
   */
  parentName?: string;

  /**
   * 父级名称
   */
  parentId?: bigint | number;

  /**
   * 排序标识
   */
  orderNum?: number;

  /**
   * 是否iframe嵌入
   */
  isFrame?: string;

  /**
   * 是否缓存
   */
  isCache?: string;

  /**
   * 菜单类型
   */
  menuType?: string;

  /**
   * 是否显示
   */
  visible?: string;

  /**
   * 菜单状态
   */
  status?: string;

  /**
   * 图标
   */
  icon?: string;
}

export default MenuEntity;
