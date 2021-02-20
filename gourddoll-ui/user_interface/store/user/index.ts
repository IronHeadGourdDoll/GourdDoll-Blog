import Mutation from "./mutation-types";
import LoginBodyDto from "@/service/model/system/user/loginBodyDto";
import UserController from "@/service/controller/system/userController";
import Empty from "@/share/extensionMethod/empty";

export const state = () => ({
  token: "",
  userInfo: {},
});

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
    const userService = new UserController(this.$axios);
    const result = userService.login(userInfo).then((data: any) => {
      commit(Mutation.setToken, data.access_token);
      return userService.getInfo().then((d: any) => {
        commit(Mutation.setUserInfo, d);
      });
    });
    return result;
  },

  /**
   * 退出登录
   */
  logout({ commit }: any) {
    const userService = new UserController(this.$axios);
    const logout = userService.logout();
    return logout.then(() => {
      commit(Mutation.setToken, "");
      commit(Mutation.setUserInfo, {});
    });
  },

  /**
   * 获取token
   */
  getToken({ state }: any) {
    let token = state.token;
    return token;
  },

  /**
   * 获取用户信息
   */
  async getUserInfo({ state, commit }: any) {
    let userInfo = state.userInfo;
    if (Empty.isObjectNull(userInfo)) {
      //如果内存中没有则去后端取
      const userService = new UserController(this.$axios);
      userInfo = await userService.getInfo();
    }
    commit(Mutation.setUserInfo, userInfo);
    return userInfo;
  },

};
