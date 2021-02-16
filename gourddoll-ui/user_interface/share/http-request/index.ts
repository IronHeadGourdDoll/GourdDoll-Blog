import { AjaxResult } from "@/service/model/common/ajaxResult";
import { NuxtAxiosInstance } from "@nuxtjs/axios";

enum HttpRequestMethod {
  get = "GET",
  post = "POST",
  put = "PUT",
  delete = "DELETE",
}

class HttpRequest {

  /**
   * axios实例
   */
  private instance: NuxtAxiosInstance;

  /**
   * 初始化请求对象
   * @param instance 必须传入axios实例
   */
  constructor(instance: NuxtAxiosInstance) {
    this.instance = instance;
  }

  async get<T = any>(url: string, params?: any) {
    const result = await this.instance.request({
      url: url,
      method: HttpRequestMethod.get,
      params: params,
    });
    const d = result.data as AjaxResult<T>;
    return d.data;
  }

  async post<T = any>(url: string, data?: any, params?: any) {
    const result = await this.instance.request({
      url: url,
      method: HttpRequestMethod.post,
      params: params,
      data: data,
    });
    const d = result.data as AjaxResult<T>;
    return d.data;
  }

  async put<T = any>(url: string, data?: any, params?: any) {
    const result = await this.instance.request({
      url: url,
      method: HttpRequestMethod.put,
      params: params,
      data: data,
    });
    const d = result.data as AjaxResult<T>;
    return d.data;
  }

  async delete<T = any>(url: string, data?: any, params?: any) {
    const result = await this.instance.request({
      url: url,
      method: HttpRequestMethod.delete,
      params: params,
      data: data,
    });
    const d = result.data as AjaxResult<T>;
    return d.data;
  }
}

export default HttpRequest;
