import Empty from "@/share/extensionMethod/empty";

const ignoreList = ["/login"]; //不需要跳转登录的路由

export default function ({ store, app }: any) {

  app.router.beforeEach(async (to: any, from: any, next: any) => {

    const token = await store.dispatch("user/getToken");
    const tokenIsNull = Empty.isStringNull(token);

    if (tokenIsNull) {
      if (!ignoreList.includes(to.path)) {
        next({ path: "/login", replace: true });
        return;
      }
    } else {
      //登录后的操作，一般是用以重新加载vuex中的数据
    }

    next();

  });

};