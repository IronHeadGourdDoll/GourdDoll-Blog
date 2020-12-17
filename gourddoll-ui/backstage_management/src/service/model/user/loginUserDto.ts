import UserEntity from "../system/userEntity";

export default class LoginUserDto extends UserEntity {
  /**
   * 是否管理员
   */
  admin!: boolean;
}
