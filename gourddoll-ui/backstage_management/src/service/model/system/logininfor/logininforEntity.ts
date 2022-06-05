class LogininforEntity {
  /**
   * 日志主键
   */
  infoId!: bigint;

  /**
   * 用户账号
   */
  userName?: string;

  /**
   * 状态 0成功 1失败
   */
  status?: number;

  /**
   * 地址
   */
  ipaddr?: Array<number>;

  /**
   * 描述
   */
  msg?: string;

  /**
   * 访问时间
   */
  accessTime?: string;
}

export default LogininforEntity;
