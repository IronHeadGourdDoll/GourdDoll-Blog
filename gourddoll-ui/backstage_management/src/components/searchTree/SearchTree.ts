import { defineComponent, SetupContext, watch, ref, toRefs } from "vue";
import { SearchOutlined } from "@ant-design/icons-vue";

/**
 * 搜索事件
 */
const selectEvent = "select";

const update_text = "update:text";

export default defineComponent({
  name: "SearchTree",
  components: {
    SearchOutlined,
  },
  emits: [selectEvent, update_text],
  props: {
    text: {
      type: String,
      required: true,
    },
    treeData: {
      type: Array,
      default: () => [],
    },
  },
  setup(props: any, context: SetupContext) {
    const { text, treeData } = toRefs(props);
    const searchData = ref<Array<any>>([]);
    let allNodeData: Array<any> = [];


    watch(treeData, function (newVal: any) {
      allNodeData = getTreeAllNode(newVal);
    }, { immediate: true });

    watch(
      [text, treeData],
      () => searchData.value = getSearchData(text.value, treeData.value, allNodeData),
      { immediate: true }
    );

    function select(expandedKeys: any, expanded: any) {
      let treeSelectedId: any;
      let treeSelected: any;
      if (expanded.selected === true) {
        treeSelectedId = expandedKeys[0];
        treeSelected = expanded.selectedNodes[0].props;
      } else {
        treeSelectedId = "";
        treeSelected = {};
      }
      context.emit(selectEvent, treeSelectedId, treeSelected);
    }

    const value = ref(text.value);
    watch(value, (v) => {
      context.emit(update_text, v);
    });

    return { select, searchData, value };
  },
});

/**
 * 获取所有节点
 * @param val 树数据
 */
function getTreeAllNode(val: Array<any>) {
  const datas: Array<any> = [];
  const childrenKey = "children";
  const addList = (data: Array<any>) => {
    for (const one of data) {
      const children = one[childrenKey];
      if (children === undefined || children.length < 1) {
        datas.push(one);
        continue;
      }
      const parentOne: any = {};
      for (const key of Object.keys(one)) {
        if (key === childrenKey) {
          parentOne[childrenKey] = [];
        } else {
          parentOne[key] = one[key];
        }
      }
      datas.push(parentOne);
      addList(one.children);
    }
  };
  addList(val);
  return datas;
}

/**
 * 获取搜索结果
 * @param text 搜索文本
 * @param treeData 原始树数据
 * @param allNodeData 所有树节点
 */
function getSearchData(text: string, treeData: Array<any>, allNodeData: Array<any>) {
  if (text.length === 0) return treeData;
  const datas = allNodeData;
  const searchData = datas.filter((p) => p.label.includes(text));
  let notNestData: Array<any> = [];
  const addParent = (item: any) => {
    notNestData.push(item);
    const index = datas.findIndex((p) => p.id === item.parentId);
    if (index != -1) {
      addParent(datas[index]);
    }
  };
  for (const item of searchData) {
    addParent(item);
  }
  const map = new Map();
  notNestData = notNestData.filter(
    (p) => !map.has(p.id) && map.set(p.id, 1)
  );
  const result = notNestData.filter((p) => p.parentId === 0);
  const generateResult = (items: Array<any>) => {
    for (const item of items) {
      item.children = notNestData.filter((p) => p.parentId === item.id);
      if (item.children.length > 0) {
        generateResult(item.children);
      }
    }
  };
  generateResult(result);
  return result;
}