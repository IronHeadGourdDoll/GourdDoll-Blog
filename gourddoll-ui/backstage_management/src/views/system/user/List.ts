import { defineComponent, reactive, ref } from "vue";
import UserController from "@/service/controller/system/userController";
import pageSizeEnum, { pageSizes } from "@/service/enumeration/pageSizeEnum";
import { getSexText } from "@/service/enumeration/sexEnum";
import { getYesNoText } from "@/service/enumeration/yesNoEnum";
import { SearchOutlined } from "@ant-design/icons-vue";
import TableResult from "@/service/model/common/tableResult";
import UserEntity from "@/service/model/system/user/userEntity";

export default defineComponent({
  name: "UserList",
  components: {
    SearchOutlined,
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
        });
    }
    loadData();

    const handleTableChange = async function (
      changePagination: any /*, filters: any, sorter: any, { currentDataSource }: any */
    ) {
      const { current, pageSize } = changePagination;
      pagination.current = current;
      pagination.pageSize = pageSize;
      loadData(current);
    };

    return {
      dataRows,
      columns,
      pagination,
      handleTableChange,
      getSexText,
      getYesNoText,
      searchText,
      loadData,
    };
  },
});
