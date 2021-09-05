import BaseEntity from "../common/baseEntity";

class ServiceCommentEntity extends BaseEntity {
  /**
   * 主键
   */
  id!: bigint;

  /**
   * 服务id
   */
  serviceId?: bigint;

  /**
   * 服务id
   */
  bId?: bigint;

  /**
   * 服务名
   */
  serviceName?: string;

  /**
   * 评论内容
   */
  content?: string;

  /**
   * 是谁评论的
   */
  commentator?: string;

  /**
   * 0直接评论service_id的，其他都是回复的评论 的id
   */
  parent?: bigint;

  /**
   * 评论层级
   */
  layer?: bigint;

  /**
   * 左编码值
   */
  lft?: bigint;

  /**
   * 右编码值
   */
  rft?: bigint;

  /**
   * 评分
   */
  rate?: bigint;

  /**
   * 子集
   */
  children!: Array<ServiceCommentEntity>;
}

export default ServiceCommentEntity;
