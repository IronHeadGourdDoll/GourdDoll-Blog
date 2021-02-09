enum MenuStatusEnum {
  enable = "0",
  disable = "1",
}

export default MenuStatusEnum;

export function getMenuStatusText(sex: any) {
  switch (sex) {
    case MenuStatusEnum.disable:
      return "停用";
    case MenuStatusEnum.enable:
      return "正常";
    default:
      return "";
  }
}

export function getMenuStatusMap() {
  const s = new Map();
  for (const item of Object.values(MenuStatusEnum)) {
    s.set(item, getMenuStatusText(item));
  }
  return s;
}
