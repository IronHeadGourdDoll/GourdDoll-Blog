enum MenuTypeEnum {
  menu = "C",
  button = "F",
}

export default MenuTypeEnum;

export function getMenuTypeText(sex: any) {
  switch (sex) {
    case MenuTypeEnum.menu:
      return "菜单";
    case MenuTypeEnum.button:
      return "按钮";
    default:
      return "";
  }
}

export function getMenuTypeMap() {
  const s = new Map();
  for (const item of Object.values(MenuTypeEnum)) {
    s.set(item, getMenuTypeText(item));
  }
  return s;
}
