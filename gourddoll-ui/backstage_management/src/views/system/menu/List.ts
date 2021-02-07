import {
  PlusOutlined,
  EditOutlined,
  DeleteOutlined,
} from "@ant-design/icons-vue";
import { defineComponent, ref, reactive, watch } from "vue";
import MenuController from "@/service/controller/system/menuController";
import MenuEntity from "@/service/model/system/menu/menuEntity";
import { createTableEllipsisCell } from "@/components/ellipsisTooltip/help";

export default defineComponent({
  name: "MenuList",
  components: {
    PlusOutlined,
    EditOutlined,
    DeleteOutlined,
  },
  setup() {
    const columns = [
      {
        title: "菜单名称",
        dataIndex: "menuName",
        key: "menuName",
        width: 140,
      },
      {
        title: "编码",
        dataIndex: "pathCode",
        key: "pathCode",
        width: 140,
        customRender: ({ text }: any) => {
          return createTableEllipsisCell(140, text);
        },
      },
      {
        title: "地址",
        dataIndex: "path",
        key: "path",
        width: 140,
        customRender: ({ text }: any) => {
          return createTableEllipsisCell(140, text);
        },
      },
      {
        title: "组件地址",
        dataIndex: "component",
        key: "component",
        width: 160,
      },
      {
        title: "类型",
        dataIndex: "menuType",
        key: "menuType",
        width: 140,
      },
      {
        title: "是否显示",
        dataIndex: "visible",
        key: "visible",
        customRender: ({ text }: any) => {
          return text == "0" ? "是" : "否";
        },
        width: 90,
      },
      {
        title: "状态",
        dataIndex: "status",
        key: "status",
        width: 80,
      },
      {
        title: "备注",
        dataIndex: "remark",
        key: "remark",
      },
    ];

    const menuController = new MenuController();

    // let treeSelectedId = "";
    // let treeSelectedMenu: any = {};
    let searchText = ref("");

    let dataRows = ref<Array<MenuEntity>>([]);
    let dataTotal = ref<number | bigint>(0);

    let currentPageNum = 0;
    let currentPageSize = 0;

    const tableSelectedRowKeys: Array<any> = reactive([]);
    let tableSelectedRows: Array<any> = reactive([]);

    function loadDataByCondition(
      currentPage: any,
      pageSize: any,
      quickText: string
    ) {
      currentPageNum = currentPage;
      currentPageSize = pageSize;
      menuController
        .getMenuList({
          quickText: quickText,
          pageNum: currentPage,
          pageSize: pageSize,
        })
        .then((data) => {
          dataTotal.value = data.total;
          dataRows.value = data.rows;
        });
    }

    function quickLoad(quickText: string) {
      loadDataByCondition(currentPageNum, currentPageSize, quickText);
    }

    function loadDataByPage(currentPage: any, pageSize: any) {
      loadDataByCondition(currentPage, pageSize, searchText.value);
    }

    function loadData() {
      loadDataByCondition(currentPageNum, currentPageSize, searchText.value);
    }

    const treeSearchText = ref("");
    let treeData: Array<any> = [];
    const treeSearchData = ref<Array<any>>([]);

    menuController.getTreeMenu().then((data) => {
      treeData = data;

      watch(
        treeSearchText,
        (newVal) => {
          const searchData = onTreeSearch(newVal);
          treeSearchData.value = searchData;
        },
        { immediate: true }
      );
    });

    function onTreeDataChanged(val: Array<any>) {
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

    function onTreeSearch(text: string) {
      if (text.length === 0) return treeData;
      const datas = onTreeDataChanged(treeData);
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

    function treeSelected(expandedKeys: any, expanded: any) {
      if (expanded.selected === true) {
        // treeSelectedId = expandedKeys[0];
        // treeSelectedMenu = expanded.selectedNodes[0].props;
      } else {
        // treeSelectedId = "";
        // treeSelectedMenu = {};
      }
    }

    return {
      treeSelected,
      treeSearchData,
      searchText,
      tableSelectedRowKeys,
      tableSelectedRows,
      columns,
      quickLoad,
      loadDataByPage,
      loadData,
      dataRows,
      dataTotal,
      treeSearchText,
    };
  },
});
