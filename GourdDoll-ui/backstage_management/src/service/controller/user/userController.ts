import ControllerBase from "../controllerBase";
import LoginBodyDto = model.user.LoginBodyDto;
import LoginUserDto = model.user.LoginUserDto;

class UserController extends ControllerBase {
  GetVerificationCode() {
    return this.request.get("/code");
  }

  login(data: LoginBodyDto) {
    return this.request.post("/auth/login", data);
  }

  getInfo() {
    return this.request.post<LoginUserDto>("/user/getInfo");
  }
}

export default UserController;
