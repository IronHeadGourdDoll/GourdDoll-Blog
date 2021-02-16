enum OperationType {
  add = 0,
  edit = 1,
}

export default OperationType;

function getOperationTypeText(operation: any) {
  switch (operation) {
    case OperationType.add:
      return "添加";
    case OperationType.edit:
      return "编辑";
    default:
      return "";
  }
}

/**
 * 获取操作标题
 * @param type 操作类型
 * @param name 名称
 */
function getTitle(type: OperationType, name: any) {
  return getOperationTypeText(type) + name;
}

export { getOperationTypeText, getTitle };
