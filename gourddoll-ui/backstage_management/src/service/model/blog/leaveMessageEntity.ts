class LeaveMessageEntity {
  /**
   * 主键
   */
  id!: bigint;

  /**
   * 被留言人
   */
  userName?: string;

  /**
   * 留言者
   */
  messagePeople?: string;

  /**
   * 内容
   */
  content?: string;

  /**
   * 0代表留的言，1代表留言的回复，按时间降序
   */
  parent?: bigint;

  /**
   * 留言层级
   */
  layer?: bigint;

  /**
   * 左编码
   */
  lft?: bigint;

  /**
   * 右编码
   */
  rft?: bigint;
}

export default LeaveMessageEntity;
