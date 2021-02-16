export default class LoginBodyDto {
  /**
   * 用户名
   */
  username!: string;

  /**
   * 用户密码
   */
  password!: string;

  /**
   * 验证码
   */
  code!: string;

  /**
   * 唯一标识
   */
  uuid!: string;
}
