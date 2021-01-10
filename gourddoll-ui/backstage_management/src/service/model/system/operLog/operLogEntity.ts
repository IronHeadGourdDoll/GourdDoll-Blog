class OperLogEntity {
  /**
   * 日志主键
   */
  operId!: bigint;

  /**
   * 操作模块
   */
  title?: string;

  /**
   * 业务类型（0其它 1新增 2修改 3删除）
   */
  businessType?: number;

  /**
   * 业务类型数组
   */
  businessTypes?: Array<number>;

  /**
   * 请求方法
   */
  method?: string;

  /**
   * 请求方式
   */
  requestMethod?: string;

  /**
   * 操作类别（0其它 1后台用户 2手机端用户）
   */
  operatorType?: number;

  /**
   * 操作人员
   */
  operName?: string;

  /**
   * 部门名称
   */
  deptName?: string;

  /**
   * 请求url
   */
  operUrl?: string;

  /**
   * 操作地址
   */
  operIp?: string;

  /**
   * 请求参数
   */
  operParam?: string;

  /**
   * 返回参数
   */
  jsonResult?: string;

  /**
   * 操作状态（0正常 1异常）
   */
  status?: number;

  /**
   * 错误消息
   */
  errorMsg?: string;

  /**
   * 操作时间
   */
  operTime?: string;
}
