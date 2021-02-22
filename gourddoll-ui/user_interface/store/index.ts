
export const actions = {
  nuxtServerInit({ dispatch }: any, { req }: any) {
    //持久化token
    dispatch("user/putToken", req.headers.cookie);
  }
};