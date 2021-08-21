import BaseEntity from "../../common/baseEntity";

class ConfigEntity extends BaseEntity {
  /**
   * 参数主键
   */
  configId!: bigint | number;

  /**
   * 参数名称
   */
  configName!: string;

  /**
   * 参数键名
   */
  configKey!: string;

  /**
   * 参数键值
   */
  configValue?: string;

  /**
   * 系统内置
   */
  configType?: string;
}

export default ConfigEntity;
