export default class CacheHelp<T> {
  private key: string;
  constructor(key: string) {
    this.key = key;
  }

  /**
   * 获取缓存
   */
  get(): T | undefined {
    const json = localStorage.getItem(this.key);
    if (json) {
      return JSON.parse(json) as T;
    }
    return undefined;
  }

  /**
   * 设置缓存
   */
  set(data: T) {
    localStorage.setItem(this.key, JSON.stringify(data));
  }

  /**
   * 删除缓存
   */
  remove() {
    localStorage.removeItem(this.key);
  }
}
