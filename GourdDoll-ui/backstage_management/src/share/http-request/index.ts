import instance from "../plugins/axios";

enum HttpRequestMethod {
  get = "GET",
  post = "POST",
  put = "PUT",
  delete = "DELETE"
}

class httpRequest {
  static get(url: string, params?: any) {
    return instance.request({
      url: url,
      method: HttpRequestMethod.get,
      params: params
    });
  }

  static post(url: string, data?: any, params?: any) {
    return instance.request({
      url: url,
      method: HttpRequestMethod.post,
      params: params,
      data: data
    });
  }

  static put(url: string, data?: any, params?: any) {
    return instance.request({
      url: url,
      method: HttpRequestMethod.put,
      params: params,
      data: data
    });
  }

  static delete(url: string, data?: any, params?: any) {
    return instance.request({
      url: url,
      method: HttpRequestMethod.delete,
      params: params,
      data: data
    });
  }
}

export default httpRequest;
