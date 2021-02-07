import { defineComponent, ref, createVNode, reactive } from "vue";
import UserController from "@/service/controller/system/userController";
import { getSexText } from "@/service/enumeration/sexEnum";
import { getYesNoText } from "@/service/enumeration/yesNoEnum";
import {
  PlusOutlined,
  EditOutlined,
  DeleteOutlined,
  ExclamationCircleOutlined,
} from "@ant-design/icons-vue";
import UserEntity from "@/service/model/system/user/userEntity";
import { Modal, message } from "ant-design-vue";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";
import Operation from "./components/operation/Operation.vue";
import operationTypeEnum from "@/service/enumeration/operationTypeEnum";

export default defineComponent({
  name: "UserList",
  components: {
    PlusOutlined,
    EditOutlined,
    DeleteOutlined,
    Operation,
  },
  setup() {
    const columns = [
      {
        title: "姓名",
        dataIndex: "nickName",
        key: "nickName",
        width: 140,
      },
      {
        title: "用户名",
        dataIndex: "userName",
        key: "userName",
        width: 140,
      },
      {
        title: "性别",
        dataIndex: "sex",
        key: "sex",
        customRender: ({ text }: any) => {
          return getSexText(text);
        },
        width: 80,
      },
      {
        title: "邮箱",
        dataIndex: "email",
        key: "email",
        width: 160,
      },
      {
        title: "电话",
        dataIndex: "phonenumber",
        key: "phonenumber",
        width: 140,
      },
      {
        title: "管理员",
        dataIndex: "admin",
        key: "admin",
        customRender: ({ text }: any) => {
          return getYesNoText(text);
        },
        width: 80,
      },
      {
        title: "备注",
        dataIndex: "remark",
        key: "remark",
      },
    ];

    const userController = new UserController();

    let searchText = ref("");

    let dataRows = ref<Array<UserEntity>>([]);
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
      userController
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
        moduleEnum.user
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
        { type: operationTypeEnum.edit, id: selectedRows[0].userId },
        moduleEnum.user
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
        const name = selectedRows[0].nickName;
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
          userController.deleteUserByIds(selectedRows.map((p) => p.userId));
          loadData();
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
