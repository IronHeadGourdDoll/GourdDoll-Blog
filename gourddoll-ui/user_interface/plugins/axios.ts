import { message } from "ant-design-vue";
import { tokenKey } from "@/share/token";
import { AjaxResult, HttpStatus } from "@/service/model/common/ajaxResult";

export default function ({ $axios, redirect, store, req }: any) {

  $axios.onRequest(async (config: any) => {
    //判断客户端或者服务端：process.client/process.server
    const token = await store.dispatch("user/getToken");
    config.headers[tokenKey] = token;
  });


  $axios.onResponse((res: any) => {
    if (
      res.status == HttpStatus.FORBIDDEN ||
      res.data.code == HttpStatus.FORBIDDEN
    ) {
      redirect("/login");
      return;
    }

    const data = res.data as AjaxResult<any>;
    if (data.code != HttpStatus.SUCCESS) {
      if (data.msg) {
        message.warning(data.msg.toString());
      }
      return Promise.reject(data);
    }
  });

  $axios.onError((error: any) => {
    return Promise.reject(error);
  });

};