import {
  PlusOutlined,
  EditOutlined,
  DeleteOutlined,
  ExclamationCircleOutlined,
} from "@ant-design/icons-vue";
import { defineComponent, ref, reactive, createVNode } from "vue";
import DeptController from "@/service/controller/system/deptController";
import DeptEntity from "@/service/model/system/dept/deptEntity";
import { createTableEllipsisCell } from "@/components/ellipsisTooltip/help";
import operationTypeEnum from "@/service/enumeration/operationTypeEnum";
import moduleEnum from "@/service/enumeration/moduleEnum";
import Emitter from "@/share/plugins/mitt";
import { Modal, message } from "ant-design-vue";
import Operation from "./components/operation/Operation.vue";
import { getYesNoText } from "@/service/enumeration/yesNoEnum";

export default defineComponent({
  name: "DeptList",
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
        dataIndex: "deptName",
        key: "deptName",
        width: 140,
      },
      {
        title: "排序",
        dataIndex: "orderNum",
        key: "orderNum",
        width: 140,
        customRender: ({ text }: any) => {
          return createTableEllipsisCell(140, text);
        },
      },
      {
        title: "负责人",
        dataIndex: "leader",
        key: "leader",
        width: 140,
        customRender: ({ text }: any) => {
          return createTableEllipsisCell(140, text);
        },
      },
      {
        title: "联系电话",
        dataIndex: "phone",
        key: "phone",
        width: 160,
      },
      {
        title: "邮箱",
        dataIndex: "email",
        key: "email",
        width: 160,
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

    const deptController = new DeptController();

    let treeSelectedId = ref<number | string>("");
    let searchText = ref("");

    let dataRows = ref<Array<DeptEntity>>([]);
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
      deptController
        .getDeptList(
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
      LoadTreeDept();
    }

    const treeSearchText = ref("");

    const treeData = ref<Array<any>>([]);

    function LoadTreeDept() {
      deptController.getTreeDept().then((data) => {
        treeData.value = data;
      });
    }
    LoadTreeDept();

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
        moduleEnum.dept
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
        { type: operationTypeEnum.edit, id: selectedRows[0].deptId },
        moduleEnum.dept
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
        const name = selectedRows[0].deptName;
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
          deptController.delete(selectedRows.map((p) => p.deptId)).then(() => {
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
