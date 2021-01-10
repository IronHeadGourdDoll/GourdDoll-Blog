import LoginUserDto from "../user/loginUserDto";

export default class UserInfoDto {
  /**
   * 权限列表
   */
  permissions!: Map<string, string>;

  /**
   * 角色列表
   */
  roles!: Array<string>;

  /**
   * 用户信息
   */
  user!: LoginUserDto;
}
