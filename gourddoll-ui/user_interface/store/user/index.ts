import userInfoHelp from "@/share/cache/userInfo";
import { setToken, getToken } from "@/share/token";
import Mutation from "./mutation-types";
import LoginBodyDto from "@/service/model/system/user/loginBodyDto";
import UserController from "@/service/controller/system/userController";
import Empty from "@/share/extensionMethod/empty";
import cookie from "cookiejs";

const userService = new UserController();

export const state = {
  token: "",
  userInfo: {},
};

export const mutations = {
  [Mutation.setToken](state: any, token: any) {
    state.token = token;
  },
  [Mutation.setUserInfo](state: any, userInfo: any) {
    state.userInfo = userInfo;
    state.roles = userInfo.roles;
  },
};

export const actions = {
  /**
   * 登录
   */
  login({ commit, state }: any, userInfo: LoginBodyDto) {
    const result = userService.login(userInfo).then((data: any) => {
      commit(Mutation.setToken, data.access_token);
      setToken(state.token);
      return userService.getInfo().then((d: any) => {
        commit(Mutation.setUserInfo, d);
        userInfoHelp.set(state.userInfo);
      });
    });
    return result;
  },

  /**
   * 退出登录
   */
  logout({ commit }: any) {
    const logout = new UserController().logout();
    return logout.then(() => {
      commit(Mutation.setToken, "");
      commit(Mutation.setUserInfo, {});
      localStorage.clear();
      sessionStorage.clear();
      cookie.clear();
    });
  },

  /**
   * 获取token
   */
  getToken({ state, commit }: any) {
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
  async getUserInfo({ state, commit }: any) {
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

};
