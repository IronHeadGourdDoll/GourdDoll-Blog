import mitt, { Emitter as IEmitter } from "mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";

const emitter: IEmitter = mitt();

/**
 * 事件处理者
 */
class Emitter {
  /**
   * 监听事件
   * @param event 事件名称
   * @param callback 回调函数
   * @param moduleName 模块名称
   */
  static on(
    event: string,
    callback: any,
    moduleName: moduleEnum = moduleEnum.node
  ) {
    const eventName = `${moduleName}/${event}`;
    //防止事件被重复监听
    if (emitter.all.has(eventName)) {
      emitter.off(eventName, emitter.all.get(eventName) as any);
    }
    emitter.on(eventName, callback);
  }

  /**
   * 触发事件
   * @param event 事件名称
   * @param param 传递给事件处理函数的参数
   * @param moduleName 模块名称
   */
  static emit(
    event: string,
    param?: any,
    moduleName: moduleEnum = moduleEnum.node
  ) {
    emitter.emit(`${moduleName}/${event}`, param);
  }
}

export default Emitter;
