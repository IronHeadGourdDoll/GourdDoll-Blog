import cookie from "cookiejs";

const tokenKey = process.env.VUE_APP_TOKEN!;

/**
 * 设置令牌
 * @param text 要设置的token文本
 */
export function setToken(text: string) {
  cookie.set(tokenKey, text);
}

/**
 * 获取令牌
 */
export function getToken() {
  return cookie()[tokenKey];
}

/**
 * 删除令牌
 */
export function removeToken() {
  cookie.remove(tokenKey);
}

export { tokenKey };
