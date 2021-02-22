import Empty from "@/share/extensionMethod/empty";
import { getCookieValue, tokenKey } from "@/share/token";

const ignoreList = ["/login"]; //不需要跳转登录的路由

export default function ({ store, app, req, redirect }: any) {

  app.router.beforeEach(async (to: any, from: any, next: any) => {

    const token = await store.dispatch("user/putToken", req.headers.cookie);
    const tokenIsNull = Empty.isStringNull(token);

    if (tokenIsNull) {
      if (!ignoreList.includes(to.path)) {
        redirect("/login");
        return;
      }
    } else {
      //登录后的操作，一般是用以重新加载vuex中的数据
    }

    next();

  });

};