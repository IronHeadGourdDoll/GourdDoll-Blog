enum SexEnum {
  /**
   * 无
   */
  none = "2",

  /**
   * 男
   */
  man = "0",

  /**
   * 女
   */
  girl = "1",
}

export default SexEnum;

export function getSexText(sex: any) {
  switch (sex) {
    case SexEnum.man:
      return "男";
    case SexEnum.girl:
      return "女";
    default:
      return "";
  }
}

export function getSexMap() {
  const sexs = new Map();
  for (const item of Object.values(SexEnum)) {
    sexs.set(item, getSexText(item));
  }
  return sexs;
}
