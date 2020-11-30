import axios from "axios";

const request = axios.create({
  baseURL: process.env.VUE_APP_API, // 基础url,如果是多环境配置这样写，也可以像下面一行的写死。
  timeout: 1000 * 60 * 3 // 请求超时时间，三分钟。
});

export default { request };
