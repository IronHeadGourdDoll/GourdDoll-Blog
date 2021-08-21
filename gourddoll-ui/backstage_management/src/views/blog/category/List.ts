import { defineComponent, ref, createVNode, reactive } from "vue";
import CategoryController from "@/service/controller/blog/categoryController";
import {
  PlusOutlined,
  EditOutlined,
  DeleteOutlined,
  ExclamationCircleOutlined,
} from "@ant-design/icons-vue";
import CategoryEntity from "@/service/model/blog/categoryEntity";
import { Modal, message } from "ant-design-vue";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";
import Operation from "./components/operation/Operation.vue";
import operationTypeEnum from "@/service/enumeration/operationTypeEnum";

export default defineComponent({
  name: "CategoryList",
  components: {
    PlusOutlined,
    EditOutlined,
    DeleteOutlined,
    Operation,
  },
  setup() {
    const columns = [
      {
        title: "分类名",
        dataIndex: "categoryName",
        key: "categoryName",
        width: 140,
      },
      // {
      //   title: "父分类id",
      //   dataIndex: "parentId",
      //   key: "parentId",
      //   width: 140,
      // },
      {
        title: "排序",
        dataIndex: "orderNum",
        key: "orderNum",
        width: 140,
      },
      {
        title: "状态",
        dataIndex: "status",
        key: "status",
        width: 140,
      },
      {
        title: "备注",
        dataIndex: "remark",
        key: "remark",
        width: 140,
      },
    ];

    const categoryController = new CategoryController();

    let searchText = ref("");

    let dataRows = ref<Array<CategoryEntity>>([]);
    let dataTotal = ref<number | bigint>(0);

    let currentPageNum = 0;
    let currentPageSize = 0;

    function loadDataByCondition(
      currentPage: any,
      pageSize: any,
      quickText: string
    ) {
      currentPageNum = currentPage;
      currentPageSize = pageSize;
      categoryController
        .getList({
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
      //console.log("quickLoad==",currentPageNum,currentPageSize,quickText);//1 50
      loadDataByCondition(currentPageNum, currentPageSize, quickText);
    }

    function loadDataByPage(currentPage: any, pageSize: any) {
      //console.log("loadDataByPage==",currentPageNum,currentPageSize);//0,0
      loadDataByCondition(currentPage, pageSize, searchText.value);
    }

    function loadData() {
      loadDataByCondition(currentPageNum, currentPageSize, searchText.value);
    }

    const tableSelectedRowKeys: Array<any> = reactive([]);
    let tableSelectedRows: Array<any> = reactive([]);

    const isShowOperation = ref(false);
    function add() {
      Emitter.emit(
        "changeOperation",
        { type: operationTypeEnum.add },
        moduleEnum.category
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
        { type: operationTypeEnum.edit, id: selectedRows[0].id },
        moduleEnum.category
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
        const name = selectedRows[0].categoryName;
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
          categoryController
            .deleteCategoryByIds(selectedRows.map((p) => p.id))
            .then(() => {
              loadData();
            });
        },
      });
    }

    return {
      dataRows,
      columns,
      searchText,
      loadData,
      add,
      edit,
      deleted,
      isShowOperation,
      quickLoad,
      tableSelectedRowKeys,
      tableSelectedRows,
      dataTotal,
      loadDataByPage,
    };
  },
});
