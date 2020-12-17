import StoreModule from "../storeModule";
import userInfoHelp from "@/share/cache/userInfo";
import { setToken, getToken } from "@/share/token";
import Mutation from "./mutation-types";
import LoginBodyDto from "@/service/model/user/loginBodyDto";
import UserController from "@/service/controller/user/userController";
import MenuController from "@/service/controller/menu/menuController";
import menuHelp from "@/share/cache/menu";
import Empty from "@/share/ExtensionMethod/empty";


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

  /**
   * 登录
   */
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

  /**
   * 获取token
   */
  getToken({ state, commit }) {
    let token = state.token;
    if (Empty.isStringNull(token)) {
      token = getToken();
      commit(Mutation.setToken, token);
    }
    return token;
  },

  /**
   * 获取用户信息
   */
  async getUserInfo({ state, commit }) {
    let userInfo = state.userInfo;
    if (Empty.isObjectNull(userInfo)) {
      userInfo = userInfoHelp.get();
      if (Empty.isObjectNull(userInfo)) {
        //如果内存和缓存中都没有则去后端取
        userInfo = await userService.getInfo();
      }
      commit(Mutation.setUserInfo, userInfo);
    }
    return userInfo;
  },

  /**
   * 获取菜单
   */
  async getMenu({ state, commit }) {
    let menu = state.menu;
    if (Empty.isArrayNull(menu)) {
      menu = menuHelp.get();
      if (Empty.isArrayNull(menu)) {
        //如果内存和缓存中都没有则去后端取
        menu = await menuService.GetUserMenu();
      }
      commit(Mutation.setMenu, menu);
    }
    return menu;
  }
};

export default obj;