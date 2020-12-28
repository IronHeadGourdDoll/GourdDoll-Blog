enum SexEnum {
  /**
   * 男
   */
  man = "0",

  /**
   * 女
   */
  girl = "1",

  /**
   * 无
   */
  none = "2",
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
