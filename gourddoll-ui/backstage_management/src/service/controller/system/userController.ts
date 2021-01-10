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
    const { pageNum, pageSize, quickText } = data;
    const userSearch = {
      pageNum,
      pageSize,
      userName: quickText,
      nickName: quickText,
      email: quickText,
      phonenumber: quickText,
    };
    return this.request.get<TableResult<UserEntity>>(
      "/system/user/list",
      userSearch
    );
  }

  /**
   * 新增用户
   */
  add(data: UserEntity) {
    return this.request.post("/system/user", data);
  }

  /**
   * 根据id获取用户信息
   */
  getUserById(id: bigint | number) {
    return this.request.get("/system/user/" + id);
  }

  /**
   * 编辑用户
   */
  edit(data: UserEntity) {
    return this.request.put("/system/user", data);
  }

  /**
   * 根据id集合删除用户
   */
  deleteUserByIds(ids: Array<number | bigint>) {
    let idsStr = "";
    //去重
    for (const id of new Set(ids).values()) {
      idsStr += `${id},`;
    }
    //逗号连接
    idsStr = idsStr.substr(0, idsStr.length - 1);
    //转码传递
    return this.request.delete("/system/user/" + encodeURIComponent(idsStr));
  }
}

export default UserController;
