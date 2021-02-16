import { AjaxResult, HttpStatus } from "@/service/model/common/ajaxResult";
import axios from "axios";
import { getToken, tokenKey } from "../token";
import { message } from "ant-design-vue";

const instance = axios.create({
  baseURL: process.env.VUE_APP_API,
  timeout: 1000 * 60 * 3, // 请求超时时间
});

const cancels = new Map();

// Add a request interceptor
instance.interceptors.request.use(
  function (config) {
    // Do something before request is sent
    const token = getToken();
    config.headers[tokenKey] = token;
    let cancel;
    config.cancelToken = new axios.CancelToken(function executor(c) {
      cancel = c;
    });
    cancels.set(config.cancelToken, cancel);
    return config;
  },
  function (error) {
    // Do something with request error
    return Promise.reject(error);
  }
);

// Add a response interceptor
instance.interceptors.response.use(
  function (response) {
    // Any status code that lie within the range of 2xx cause this function to trigger
    // Do something with response data

    if (
      response.status == HttpStatus.FORBIDDEN ||
      response.data.code == HttpStatus.FORBIDDEN
    ) {
      for (const c of cancels.values()) {
        if (c) c("返回登录页取消请求");
      }
      // router.push({ path: "/login" });
      window.location.href = "/login";
    } else {
      cancels.delete(response.config.cancelToken);
    }

    const data = response.data as AjaxResult<any>;
    if (data.code != HttpStatus.SUCCESS) {
      if (data.msg) {
        message.warning(data.msg.toString());
      }
      return Promise.reject(data);
    }

    return response;
  },
  function (error) {
    // Any status codes that falls outside the range of 2xx cause this function to trigger
    // Do something with response error
    return Promise.reject(error);
  }
);

export default instance;
