import UserInfoDto from "@/service/model/system/user/userInfoDto";
import CacheHelp from "../cacheHelp";

const key = "userInfo";
const cacheHelp = new CacheHelp<UserInfoDto>(key);

export default class MenuCache {
  /**
   * 获取用户信息
   */
  static get() {
    return cacheHelp.get();
  }

  /**
   * 设置用户信息缓存
   */
  static set(data: UserInfoDto) {
    cacheHelp.set(data);
  }

  /**
   * 删除用户信息缓存
   */
  static remove() {
    cacheHelp.remove();
  }
}
