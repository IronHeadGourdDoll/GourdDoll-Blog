import SexEnum from "../../../enumeration/sexEnum";
import BaseEntity from "../../common/baseEntity";
import DeptEntity from "../dept/deptEntity";
import RoleEntity from "../role/roleEntity";

class UserEntity extends BaseEntity {
  /**
   * 用户ID
   */
  userId!: bigint;

  /**
   * 部门ID
   */
  deptId?: bigint;

  /**
   * 用户账号
   */
  userName!: string;

  /**
   * 用户昵称
   */
  nickName!: string;

  /**
   *
   */
  userType?: string;

  /**
   * 用户邮箱
   */
  email?: string;

  /**
   * 手机号码
   */
  phonenumber?: string;

  /**
   * 用户性别
   */
  sex?: SexEnum;

  /**
   * 用户头像
   */
  avatar?: string;

  /**
   * 密码
   */
  password?: string;

  /**
   * 盐加密
   */
  salt?: string;

  /**
   * 帐号状态（0正常 1停用）
   */
  status?: string;

  /**
   * 删除标志（0代表存在 2代表删除）
   */
  delFlag?: string;

  /**
   * 最后登录IP
   */
  loginIp?: string;

  /**
   * 最后登录时间
   */
  loginDate?: string;

  /**
   * 是否管理员
   */
  admin?: boolean;

  dept?: DeptEntity;

  /** 角色对象 */
  roles?: Array<RoleEntity>;

  /** 角色组 */
  roleIds?: Array<bigint>;

  /** 岗位组 */
  postIds?: Array<bigint>;
}

export default UserEntity;
