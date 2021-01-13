import { defineComponent, reactive, ref, createVNode } from "vue";
import UserController from "@/service/controller/system/userController";
import { getSexText } from "@/service/enumeration/sexEnum";
import { getYesNoText } from "@/service/enumeration/yesNoEnum";
import {
  PlusOutlined,
  EditOutlined,
  DeleteOutlined,
  ExclamationCircleOutlined,
} from "@ant-design/icons-vue";
import TableResult from "@/service/model/common/tableResult";
import UserEntity from "@/service/model/system/user/userEntity";
import { Modal, message } from "ant-design-vue";
import AddUser from "./components/addUser/AddUser.vue";
import EditUser from "./components/editUser/EditUser.vue";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";

export default defineComponent({
  name: "UserList",
  components: {
    PlusOutlined,
    EditOutlined,
    DeleteOutlined,
    AddUser,
    EditUser,
  },
  setup() {
    const columns = [
      {
        title: "姓名",
        dataIndex: "nickName",
        key: "nickName",
      },
      {
        title: "用户名",
        dataIndex: "userName",
        key: "userName",
      },
      {
        title: "性别",
        dataIndex: "sex",
        key: "sex",
        slots: { customRender: "sex" },
      },
      {
        title: "邮箱",
        dataIndex: "email",
        key: "email",
      },
      {
        title: "电话",
        dataIndex: "phonenumber",
        key: "phonenumber",
      },
      {
        title: "是否管理员",
        dataIndex: "admin",
        key: "admin",
        slots: { customRender: "admin" },
      },
      {
        title: "备注",
        dataIndex: "remark",
        key: "remark",
      },
    ];

    const userController = new UserController();

    let searchText = ref("");

    let data: TableResult<UserEntity> = { total: 0, rows: [] };
    let dataRows: Array<UserEntity> = reactive([]);
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
        .then((p) => {
          data = p;
          dataTotal.value = data.total;
          dataRows.splice(0, dataRows.length, ...data.rows);
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

    const isAddModal = ref(false);
    function add() {
      isAddModal.value = true;
    }

    const isEditModal = ref(false);
    function edit() {
      if (tableSelectedRows.length <= 0) {
        message.error("请先选择，再进行此操作");
        return;
      } else if (tableSelectedRows.length > 1) {
        message.error("请选择一条数据进行编辑");
        return;
      }
      Emitter.emit("loadInfo", tableSelectedRows[0].userId, moduleEnum.user);
      isEditModal.value = true;
    }

    function deleted() {
      let msg: string;
      if (tableSelectedRows.length <= 0) {
        message.error("请先选择，再进行此操作");
        return;
      } else if (tableSelectedRows.length == 1) {
        const name = tableSelectedRows[0].nickName;
        msg = `确认要删除「${name}」吗？`;
      } else {
        msg = `您选择了${tableSelectedRows.length}条数据，确认要删除吗？`;
      }

      Modal.confirm({
        title: "删除确认",
        icon: createVNode(ExclamationCircleOutlined),
        content: msg,
        okText: "确认",
        cancelText: "取消",
        onOk() {
          userController.deleteUserByIds(
            tableSelectedRows.map((p) => p.userId)
          );
          loadData();
        },
      });
    }

    return {
      dataRows,
      columns,
      getSexText,
      getYesNoText,
      searchText,
      loadData,
      add,
      edit,
      deleted,
      isAddModal,
      isEditModal,
      quickLoad,
      tableSelectedRowKeys,
      tableSelectedRows,
      dataTotal,
      loadDataByPage,
    };
  },
});
