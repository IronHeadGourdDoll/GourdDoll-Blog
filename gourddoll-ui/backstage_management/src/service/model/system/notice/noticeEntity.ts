import BaseEntity from "../../common/baseEntity";

class NoticeEntity extends BaseEntity {
  /**
   * 公告ID
   */
  noticeId!: bigint | number;

  /**
   * 公告标题
   */
  noticeTitle!: string;

  /**
   * 公告类型
   */
  noticeType!: string;

  /**
   * 公告内容
   */
  noticeContent?: string;

  /**
   * 公告状态
   */
  status?: string;
}

export default NoticeEntity;
