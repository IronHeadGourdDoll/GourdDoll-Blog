import { defineComponent, ref, createVNode, reactive } from "vue";
import ConfigController from "@/service/controller/system/configController";
import {
  PlusOutlined,
  EditOutlined,
  DeleteOutlined,
  ExclamationCircleOutlined,
} from "@ant-design/icons-vue";
import ConfigEntity from "@/service/model/system/config/configEntity";
import { Modal, message } from "ant-design-vue";
import Emitter from "@/share/plugins/mitt";
import moduleEnum from "@/service/enumeration/moduleEnum";
import Operation from "./components/operation/Operation.vue";
import operationTypeEnum from "@/service/enumeration/operationTypeEnum";

export default defineComponent({
  name: "configList",
  components: {
    PlusOutlined,
    EditOutlined,
    DeleteOutlined,
    Operation,
  },
  setup() {
    const columns = [
      {
        title: "参数名称",
        dataIndex: "configName",
        key: "configName",
        width: 140,
      },
      {
        title: "参数键名",
        dataIndex: "configKey",
        key: "configKey",
        width: 140,
      },
      {
        title: "参数键值",
        dataIndex: "configValue",
        key: "configValue",
        width: 140,
      },
      {
        title: "系统内置",
        dataIndex: "configType",
        key: "configType",
        width: 140,
      },
    ];

    const configController = new ConfigController();

    let searchText = ref("");

    let dataRows = ref<Array<ConfigEntity>>([]);
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
      configController
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
        moduleEnum.config
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
        { type: operationTypeEnum.edit, id: selectedRows[0].configId },
        moduleEnum.config
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
        const name = selectedRows[0].configName;
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
          configController
            .deleteConfigByIds(selectedRows.map((p) => p.configId))
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
