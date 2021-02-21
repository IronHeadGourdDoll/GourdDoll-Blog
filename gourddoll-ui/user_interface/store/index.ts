import Mutation from "./user/mutation-types";
import { getCookieValue, tokenKey } from "@/share/token";

export const actions = {
  nuxtServerInit({ commit }: any, { req }: any) {
    const cookie = req.headers.cookie;
    const token = getCookieValue(tokenKey, cookie);
    commit(`user/${Mutation.setToken}`, token);
  }
};