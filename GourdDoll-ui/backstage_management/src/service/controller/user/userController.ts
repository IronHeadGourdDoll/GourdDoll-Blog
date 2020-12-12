import ControllerBase from "../controllerBase";
import LoginBodyDto from "../../model/user/loginBodyDto";
import LoginInfoDto from "../../model/user/loginInfoDto";
import UserInfoDto from "../../model/user/userInfoDto";
import VerificationCodeDto from "../../model/user/verificationCodeDto";

class UserController extends ControllerBase {
  GetVerificationCode() {
    return this.request.get<VerificationCodeDto>("/code");
  }

  login(data: LoginBodyDto) {
    return this.request.post<LoginInfoDto>("/auth/login", data);
  }

  getInfo() {
    return this.request.get<UserInfoDto>("/system/user/getInfo");
  }
}

export default UserController;
