import ControllerBase from "../controllerBase";
import LoginBodyDto from "../../model/user/loginBodyDto";
import LoginInfoDto from "../../model/user/loginInfoDto";
import LoginUserDto from "../../model/user/loginUserDto";
import VerificationCodeDto from "../../model/user/verificationCodeDto";

class UserController extends ControllerBase {
  GetVerificationCode() {
    return this.request.get<VerificationCodeDto>("/code");
  }

  login(data: LoginBodyDto) {
    return this.request.post<LoginInfoDto>("/auth/login", data);
  }

  getInfo() {
    return this.request.post<LoginUserDto>("/user/getInfo");
  }
}

export default UserController;
