import ControllerBase from "../controllerBase";
import MenuTreeDto from "../../model/menu/menuTreeDto";

class MenuController extends ControllerBase {
  GetUserMenu() {
    return this.request.get<Array<MenuTreeDto>>("/system/menu/treeselect-lv");
  }
}

export default MenuController;
