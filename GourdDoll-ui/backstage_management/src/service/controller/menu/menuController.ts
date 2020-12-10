import ControllerBase from "../controllerBase";

class MenuController extends ControllerBase {
  GetUserMenu(userid: bigint) {
    return this.request.get("/GetUserMenu", userid);
  }
}

export default MenuController;
