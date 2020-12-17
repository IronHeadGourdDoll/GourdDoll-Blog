class MedalEntity {
  /**
   * 主键
   */
  id!: bigint;

  /**
   * 勋章名字
   */
  medalName?: string;

  /**
   * 勋章图片
   */
  img?: string;

  /**
   * 勋章描述
   */
  description?: string;
}

export default MedalEntity;
