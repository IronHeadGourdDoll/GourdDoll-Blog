import StoreModule from "../storeModule";
import userInfoHelp from "@/share/cache/userInfo";
import { setToken } from "@/share/token";
import Mutation from "./mutation-types";
import LoginBodyDto from "@/service/model/user/loginBodyDto";
import UserController from "@/service/controller/user/userController";
import MenuController from "@/service/controller/menu/menuController";
import menuHelp from "@/share/cache/menu";


const userService = new UserController();
const menuService = new MenuController();
const obj = new StoreModule();

obj.state = {
  token: "",
  userInfo: {},
  roles: [],
  menu: [],
};

obj.mutations = {
  [Mutation.setToken](state, token) {
    state.token = token;
  },
  [Mutation.setUserInfo](state, userInfo) {
    state.userInfo = userInfo;
    state.roles = userInfo.roles;
  },
  [Mutation.setMenu](state, menu) {
    state.menu = menu;
  }
};

obj.actions = {
  login({ commit, state }, userInfo: LoginBodyDto) {
    const result = userService
      .login(userInfo)
      .then(data => {
        commit(Mutation.setToken, data.access_token);
        setToken(state.token);
        const p1 = userService.getInfo().then((d) => {
          commit(Mutation.setUserInfo, d);
          userInfoHelp.set(state.userInfo);
        });
        const p2 = menuService.GetUserMenu().then((d) => {
          commit(Mutation.setMenu, d);
          menuHelp.set(state.menu);
        });
        return Promise.all([p1, p2]);
      });
    return result;
  },
};

export default obj;