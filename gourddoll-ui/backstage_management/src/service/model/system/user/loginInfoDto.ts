export default class LoginInfoDto {
  /**
   * 令牌
   */
  access_token!: string;

  /**
   * 过期时间
   */
  expires_in!: number;
}
