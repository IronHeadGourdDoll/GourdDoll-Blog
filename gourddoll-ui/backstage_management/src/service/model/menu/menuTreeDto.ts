export default class menuTreeDto {
  /**
   * 唯一标识
   */
  id!: bigint;

  /**
   * 唯一编码
   */
  pathCode!: string;

  /**
   * 显示名称
   */
  label!: bigint;

  /**
   * 组件地址
   */
  component?: string;

  /**
   * 路由地址
   */
  path!: string;

  /**
   * 图标
   */
  icon?: string;

  /**
   * 是否内嵌
   */
  isFrame?: string;

  /**
   * 是否缓存
   */
  isCache?: string;

  /**
   * 菜单类型
   */
  menuType!: string;

  /**
   * 父级ID
   */
  parentId?: bigint;

  /**
   *
   */
  perms?: string;

  /**
   * 子集
   */
  children?: Array<menuTreeDto>;
}
