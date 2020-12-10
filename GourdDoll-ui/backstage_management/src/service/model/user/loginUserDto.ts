export default class LoginUserDto {
  /**
   * 用户唯一标识
   */
  token?: string;

  /**
   * 用户名id
   */
  userid!: bigint;

  /**
   * 用户名
   */
  username?: string;

  /**
   * 登录时间
   */
  loginTime?: bigint;

  /**
   * 过期时间
   */
  expireTime?: bigint;

  /**
   * 登录IP地址
   */
  ipaddr?: string;

  /**
   * 权限列表
   */
  permissions: Array<string> = [];

  /**
   * 角色列表
   */
  roles: Array<string> = [];
}
