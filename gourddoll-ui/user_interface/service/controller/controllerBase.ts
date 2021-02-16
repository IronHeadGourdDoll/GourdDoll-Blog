import HttpRequest from "@/share/http-request";
import { NuxtAxiosInstance } from "@nuxtjs/axios";

class ControllerBase {

  /**
   * http请求
   */
  protected request;

  /**
   * 初始化请求对象
   * @param instance axios实例
   */
  constructor(instance: NuxtAxiosInstance) {
    this.request = new HttpRequest(instance);
  }

}

export default ControllerBase;
