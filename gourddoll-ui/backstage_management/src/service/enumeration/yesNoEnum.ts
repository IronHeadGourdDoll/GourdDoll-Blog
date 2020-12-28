enum YesNoEnum {
  /**
   * 是
   */
  yes = "1",

  /**
   * 否
   */
  no = "0",
}

export default YesNoEnum;

export function getYesNoText(v: any) {
  if (Object.is(v, YesNoEnum.yes) || Object.is(v, true)) {
    return "是";
  }
  return "否";
}
