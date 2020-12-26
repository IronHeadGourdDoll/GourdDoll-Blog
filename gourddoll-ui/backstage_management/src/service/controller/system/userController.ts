import ControllerBase from "../controllerBase";
import LoginBodyDto from "../../model/system/user/loginBodyDto";
import LoginInfoDto from "../../model/system/user/loginInfoDto";
import UserInfoDto from "../../model/system/user/userInfoDto";
import VerificationCodeDto from "../../model/system/user/verificationCodeDto";
import TableSearch from "../../model/common/tableSearch";
import TableResult from "../../model/common/tableResult";
import UserEntity from "../../model/system/user/userEntity";

class UserController extends ControllerBase {
  /**
   * 获取验证码
   */
  getVerificationCode() {
    return this.request.get<VerificationCodeDto>("/code");
  }

  /**
   * 登录
   */
  login(data: LoginBodyDto) {
    return this.request.post<LoginInfoDto>("/auth/login", data);
  }

  /**
   * 获取用户信息
   */
  getInfo() {
    return this.request.get<UserInfoDto>("/system/user/getInfo");
  }

  /**
   * 退出登录
   */
  logout() {
    return this.request.delete("/auth/logout");
  }

  /**
   * 获取用户列表
   */
  getList(data: TableSearch) {
    return this.request.get<TableResult<UserEntity>>("/system/user/list", data);
  }
}

export default UserController;
