function _isNull(s: any): boolean {
  return Object.is(s, undefined) || Object.is(s, null);
}

class Empty {
  /**
   * 判断对象是否为空。如果对象为null或者undefined则返回true。
   */
  static isNull(s: any): boolean {
    return _isNull(s);
  }

  /**
   * 判断对象是否为空或者空字符串。如果对象为null或者undefined或者""则返回true。
   */
  static isStringNull(s: any): boolean {
    return _isNull(s) || Object.is(s, "");
  }

  /**
   * 判断对象是否为空或者空字符串或者空格。如果对象为null或者undefined或者""或者空格则返回true。
   */
  static isNullOrWhiteSpace(s: any): boolean {
    if (_isNull(s) === false) return false;
    return (s as string).toString().trim().length === 0;
  }

  /**
   * 判断对象是否是空对象。如果对象为null或者undefined或者{}则返回true。
   */
  static isObjectNull(s: any): boolean {
    return _isNull(s) || Object.is(Object.getOwnPropertyNames(s).length, 0);
  }

  /**
   * 判断对象是否空数组。如果对象为null或者undefined或者[]则返回true。
   */
  static isArrayNull(s: any): boolean {
    return _isNull(s) || Object.is(s.length, 0);
  }

  /**
   * 判断对象是否空数字。如果对象为null或者undefined或者Infinity或者NaN则返回true。
   */
  static isNumberNull(s: any): boolean {
    return _isNull(s) || Number.isNaN(s) || !Number.isFinite(s);
  }
}

export default Empty;
