import instance from "../plugins/axios";
import { AjaxResult } from "@/service/model/common/ajaxResult";

enum HttpRequestMethod {
  get = "GET",
  post = "POST",
  put = "PUT",
  delete = "DELETE"
}

class HttpRequest {
  static async get<T = any>(url: string, params?: any) {
    const result = await instance.request({
      url: url,
      method: HttpRequestMethod.get,
      params: params
    });
    const d = result.data as AjaxResult<T>;
    return d.data;
  }

  static async post<T = any>(url: string, data?: any, params?: any) {
    const result = await instance.request({
      url: url,
      method: HttpRequestMethod.post,
      params: params,
      data: data
    });
    const d = result.data as AjaxResult<T>;
    return d.data;
  }

  static async put<T = any>(url: string, data?: any, params?: any) {
    const result = await instance.request({
      url: url,
      method: HttpRequestMethod.put,
      params: params,
      data: data
    });
    const d = result.data as AjaxResult<T>;
    return d.data;
  }

  static async delete<T = any>(url: string, data?: any, params?: any) {
    const result = await instance.request({
      url: url,
      method: HttpRequestMethod.delete,
      params: params,
      data: data
    });
    const d = result.data as AjaxResult<T>;
    return d.data;
  }
}

export default HttpRequest;
