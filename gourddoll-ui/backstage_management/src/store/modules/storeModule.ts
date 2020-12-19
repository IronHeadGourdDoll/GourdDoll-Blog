import {
  Module,
  GetterTree,
  ActionTree,
  MutationTree,
  ModuleTree
} from "vuex/types";

export default class StoreModule<S = any, R = any> implements Module<S, R> {
  /**
   * 默认开启命名空间
   */
  public namespaced = true;

  state!: S | (() => S);
  getters?: GetterTree<S, R>;
  actions!: ActionTree<S, R>;
  mutations!: MutationTree<S>;
  modules?: ModuleTree<R>;
}
