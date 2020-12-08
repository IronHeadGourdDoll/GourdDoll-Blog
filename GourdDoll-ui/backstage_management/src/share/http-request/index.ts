import instance from "../plugins/axios";
import AjaxResult = model.common.AjaxResult;

enum HttpRequestMethod {
  get = "GET",
  post = "POST",
  put = "PUT",
  delete = "DELETE"
}

class httpRequest {
  static async get<T = any>(url: string, params?: any) {
    const result = await instance.request({
      url: url,
      method: HttpRequestMethod.get,
      params: params
    });
    return result.data as AjaxResult<T>;
  }

  static async post<T = any>(url: string, data?: any, params?: any) {
    const result = await instance.request({
      url: url,
      method: HttpRequestMethod.post,
      params: params,
      data: data
    });
    return result.data as AjaxResult<T>;
  }

  static async put<T = any>(url: string, data?: any, params?: any) {
    const result = await instance.request({
      url: url,
      method: HttpRequestMethod.put,
      params: params,
      data: data
    });
    return result.data as AjaxResult<T>;
  }

  static async delete<T = any>(url: string, data?: any, params?: any) {
    const result = await instance.request({
      url: url,
      method: HttpRequestMethod.delete,
      params: params,
      data: data
    });
    return result.data as AjaxResult<T>;
  }
}

export default httpRequest;
