import { defineComponent, ref, createVNode, reactive } from "vue";
import ServiceCommentController from "@/service/controller/blog/serviceCommentController";
import {
  PlusOutlined,
  EditOutlined,
  DeleteOutlined,
  ExclamationCircleOutlined,
} from "@ant-design/icons-vue";
import ServiceCommentEntity from "@/service/model/blog/serviceCommentEntity";
import { Modal, message } from "ant-design-vue";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";
import Operation from "./components/operation/Operation.vue";
import operationTypeEnum from "@/service/enumeration/operationTypeEnum";

export default defineComponent({
  name: "CommentList",
  components: {
    PlusOutlined,
    EditOutlined,
    DeleteOutlined,
    Operation,
  },
  setup() {
    const columns = [
      {
        title: "博客标题",
        dataIndex: "blogTitle",
        key: "blogTitle",
        width: 140,
      },
      {
        title: "评论内容",
        dataIndex: "content",
        key: "content",
        width: 140,
      },
      {
        title: "评论人",
        dataIndex: "commentator",
        key: "commentator",
        width: 140,
      },
      // {
      //   title: "上级id",
      //   dataIndex: "parent",
      //   key: "parent",
      //   width: 140,
      // },
      {
        title: "评分",
        dataIndex: "rate",
        key: "rate",
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

    const serviceCommentController = new ServiceCommentController();

    let searchText = ref("");

    let dataRows = ref<Array<ServiceCommentEntity>>([]);
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
      serviceCommentController
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
      loadDataByCondition(currentPageNum, currentPageSize, quickText);
    }

    function loadDataByPage(currentPage: any, pageSize: any) {
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
        moduleEnum.comment
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
        moduleEnum.comment
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
        const name = selectedRows[0].id;
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
          serviceCommentController
            .deleteCommentByIds(selectedRows.map((p) => p.id))
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
