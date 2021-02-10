import {
  PlusOutlined,
  EditOutlined,
  DeleteOutlined,
  ExclamationCircleOutlined,
} from "@ant-design/icons-vue";
import { defineComponent, ref, reactive, createVNode } from "vue";
import MenuController from "@/service/controller/system/menuController";
import MenuEntity from "@/service/model/system/menu/menuEntity";
import { createTableEllipsisCell } from "@/components/ellipsisTooltip/help";
import operationTypeEnum from "@/service/enumeration/operationTypeEnum";
import moduleEnum from "@/service/enumeration/moduleEnum";
import Emitter from "@/share/plugins/mitt";
import { Modal, message } from "ant-design-vue";
import Operation from "./components/operation/Operation.vue";
import { getYesNoText } from "@/service/enumeration/yesNoEnum";
import { getMenuTypeText } from "@/service/enumeration/menuTypeEnum";
import { getMenuStatusText } from "@/service/enumeration/menuStatusEnum";

export default defineComponent({
  name: "MenuList",
  components: {
    PlusOutlined,
    EditOutlined,
    DeleteOutlined,
    Operation,
  },
  setup() {
    const columns = [
      {
        title: "名称",
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
        customRender: ({ text }: any) => {
          return getMenuTypeText(text);
        },
        width: 140,
      },
      {
        title: "是否显示",
        dataIndex: "visible",
        key: "visible",
        customRender: ({ text }: any) => {
          return getYesNoText(text);
        },
        width: 90,
      },
      {
        title: "状态",
        dataIndex: "status",
        key: "status",
        customRender: ({ text }: any) => {
          return getMenuStatusText(text);
        },
        width: 80,
      },
      {
        title: "备注",
        dataIndex: "remark",
        key: "remark",
      },
    ];

    const menuController = new MenuController();

    let treeSelectedId = ref<number | string>("");
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
        .getMenuList(
          {
            quickText: quickText,
            pageNum: currentPage,
            pageSize: pageSize,
          },
          treeSelectedId.value
        )
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
      LoadTreeMenu();
    }

    const treeSearchText = ref("");

    const treeData = ref<Array<any>>([]);

    function LoadTreeMenu() {
      menuController.getTreeMenu().then((data) => {
        treeData.value = data;
      });
    }
    LoadTreeMenu();

    function treeSelected(id: any) {
      treeSelectedId.value = id;
      //点击树加载右侧表格
      loadDataByCondition(currentPageNum, currentPageSize, searchText.value);
    }

    const isShowOperation = ref(false);
    function add() {
      Emitter.emit(
        "changeOperation",
        { type: operationTypeEnum.add },
        moduleEnum.menu
      );
      isShowOperation.value = true;
    }

    function edit() {
      const selectedRows = tableSelectedRows;
      if (selectedRows.length <= 0) {
        message.error("请先选择，再进行此操作");
        return;
      } else if (selectedRows.length > 1) {
        message.error("请选择一条数据进行编辑");
        return;
      }
      Emitter.emit(
        "changeOperation",
        { type: operationTypeEnum.edit, id: selectedRows[0].menuId },
        moduleEnum.menu
      );
      isShowOperation.value = true;
    }

    function deleted() {
      let msg: string;
      const selectedRows = tableSelectedRows;
      if (selectedRows.length <= 0) {
        message.error("请先选择，再进行此操作");
        return;
      } else if (selectedRows.length == 1) {
        const name = selectedRows[0].menuName;
        msg = `确认要删除「${name}」吗？`;
      } else {
        msg = `您选择了${selectedRows.length}条数据，确认要删除吗？`;
      }

      Modal.confirm({
        title: "删除确认",
        icon: createVNode(ExclamationCircleOutlined),
        content: msg,
        okText: "确认",
        cancelText: "取消",
        onOk() {
          menuController.delete(selectedRows.map((p) => p.menuId)).then(() => {
            loadData();
          });
        },
      });
    }

    return {
      treeSelected,
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
      treeData,
      add,
      edit,
      deleted,
      isShowOperation,
      treeSelectedId,
    };
  },
});
