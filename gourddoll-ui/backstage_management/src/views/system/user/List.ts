import { defineComponent, reactive, ref, createVNode } from "vue";
import UserController from "@/service/controller/system/userController";
import pageSizeEnum, { pageSizes } from "@/service/enumeration/pageSizeEnum";
import { getSexText } from "@/service/enumeration/sexEnum";
import { getYesNoText } from "@/service/enumeration/yesNoEnum";
import {
  SearchOutlined,
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
    SearchOutlined,
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

    let data: TableResult<UserEntity> = { total: 0n, rows: [] };

    let dataRows: Array<UserEntity> = reactive([]);

    const defaultPageSize = pageSizeEnum.fifty;

    const pagination = reactive({
      pageSizeOptions: pageSizes,
      defaultPageSize: defaultPageSize,
      showQuickJumper: true,
      showSizeChanger: true,
      total: Number.parseInt(data.total as any),
      showTotal(total: any, range: any) {
        return `显示${range[0]}-${range[1]}条数据，共${total}条`;
      },
      current: 1,
      pageSize: defaultPageSize,
    });

    function loadData(currentPage = 1) {
      userController
        .getList({
          quickText: searchText.value,
          pageNum: currentPage,
          pageSize: pagination.pageSize,
        })
        .then((p) => {
          data = p;
          pagination.total = Number.parseInt(data.total as any);
          dataRows.splice(0, dataRows.length, ...data.rows);
          tableSelectedRows = [];
          tableSelectedRowKeys.splice(0, tableSelectedRowKeys.length);
        });
    }
    loadData();

    function handleTableChange(
      changePagination: any /*, filters: any, sorter: any, { currentDataSource }: any */
    ) {
      const { current, pageSize } = changePagination;
      pagination.current = current;
      pagination.pageSize = pageSize;
      loadData(current);
    }

    const tableSelectedRowKeys: Array<any> = reactive([]);
    let tableSelectedRows: Array<any> = [];
    const rowSelection = {
      selectedRowKeys: tableSelectedRowKeys,
      hideDefaultSelections: true,
      onChange: (selectedRowKeys: any, selectedRows: any) => {
        tableSelectedRows = selectedRows;
        tableSelectedRowKeys.splice(
          0,
          tableSelectedRowKeys.length,
          ...selectedRowKeys
        );
      },
    };

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
          message.success("还没做删除");
        },
      });
    }

    return {
      dataRows,
      columns,
      pagination,
      handleTableChange,
      getSexText,
      getYesNoText,
      searchText,
      loadData,
      rowSelection,
      add,
      edit,
      deleted,
      isAddModal,
      isEditModal,
    };
  },
});
