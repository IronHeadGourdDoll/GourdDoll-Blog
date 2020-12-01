import { getToken, tokenKey } from "../token";
import instance from "../plugins/axios";
import { AxiosResponse } from "axios";

interface IRequestMethod {
  get(url: string, params?: any): Promise<AxiosResponse<any>>;
  post(url: string, data?: any, params?: any): Promise<AxiosResponse<any>>;
  put(url: string, data?: any, params?: any): Promise<AxiosResponse<any>>;
  delete(url: string, data?: any, params?: any): Promise<AxiosResponse<any>>;
}

function getTokenHeader() {
  const headers: any = {};
  headers[tokenKey] = getToken();
  return headers;
}

const httpRequest: IRequestMethod = {
  get: function(url: string, params?: any) {
    return instance.request({
      url: url,
      method: "GET",
      headers: getTokenHeader(),
      params: params
    });
  },
  post: function(url: string, data?: any, params?: any) {
    return instance.request({
      url: url,
      method: "POST",
      headers: getTokenHeader(),
      params: params,
      data: data
    });
  },
  put: function(url: string, data?: any, params?: any) {
    return instance.request({
      url: url,
      method: "PUT",
      headers: getTokenHeader(),
      params: params,
      data: data
    });
  },
  delete: function(url: string, data?: any, params?: any) {
    return instance.request({
      url: url,
      method: "DELETE",
      headers: getTokenHeader(),
      params: params,
      data: data
    });
  }
};

export default httpRequest;
