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


/**
 * 获取Cookie值
 * @param key 键
 * @param cookies 键值对字符串(等号成对，分号分隔)
 */
export function getCookieValue(key: string, cookies: string) {
  if (cookies) {
    const arrCookie = cookies.split(";");
    const length = arrCookie.length;
    for (let i = 0; i < length; i++) {
      const arr = arrCookie[i].split("=");
      if (arr[0] === key) return arr[1];
    }
  }
  return "";
}