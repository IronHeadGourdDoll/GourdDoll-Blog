import {
  defineComponent,
  reactive,
  nextTick,
  SetupContext,
  toRefs,
} from "vue";
import pageSizeEnum, { pageSizes } from "@/service/enumeration/pageSizeEnum";

/**
 * 加载数据事件
 */
const loadDataEvent = "loadData";

/**
 * 更新选中的行的键值
 */
const updateSelectedRowKeys = "update:selectedRowKeys";

/**
 * 更新选中的行
 */
const updateSelectedRows = "update:selectedRows";

// const updateCurrentPage = "update:currentPage";

// const updatePageSize = "update:pageSize";


export default defineComponent({
  name: "PagDataTable",
  props: {
    rowKey: String,
    dataSource: Array,
    columns: Array,
    total: [Number, BigInt],
    selectedRowKeys: Array,
    selectedRows: Array,
    heightAdaption: {
      type: Boolean,
      default: true,
    }
  },
  setup(props: any, context: SetupContext) {
    const { rowKey, total, heightAdaption, } = toRefs(props);
    const dataSource = reactive(props.dataSource);
    const selectedRowKeys = reactive(props.selectedRowKeys);
    const selectedRows = reactive(props.selectedRows);
    const columns = reactive(props.columns);

    const defaultPageSize = pageSizeEnum.fifty;
    const pagination = reactive({
      pageSizeOptions: pageSizes,
      defaultPageSize: defaultPageSize,
      pageSize: defaultPageSize,
      current: 1,
      total: total,
      showQuickJumper: true,
      showSizeChanger: true,
      showTotal(total: any, range: any) {
        return `显示${range[0]}-${range[1]}条数据，共${total}条`;
      },
    });

    function loadData() {
      context.emit(loadDataEvent, pagination.current, pagination.pageSize);
      //执行加载数据后需要清空选中值
      selectedRowKeys.splice(0, selectedRowKeys.length);
      selectedRows.splice(0, selectedRows.length);
      context.emit(updateSelectedRowKeys, []);
      context.emit(updateSelectedRows, []);
      nextTick().then(() => loadTableWidth());
    };

    //加载完成控件后执行一下
    nextTick().then(p => {
      loadData();
    });

    function handlePaginationChange(changePagination: any) {
      const { current, pageSize } = changePagination;
      pagination.current = current;
      pagination.pageSize = pageSize;
      loadData();
    }

    const rowSelection = {
      selectedRowKeys: selectedRowKeys,
      hideDefaultSelections: true,
      onChange: (keys: any, rows: any) => {
        selectedRowKeys.splice(0, selectedRowKeys.length, ...keys);
        selectedRows.splice(0, selectedRows.length, ...rows);
        context.emit(updateSelectedRowKeys, selectedRowKeys);
        context.emit(updateSelectedRows, selectedRows);
        nextTick().then(() => loadTableWidth());
      },
    };


    function loadTableWidth() {
      if (heightAdaption) {
        const tablebody = document.querySelector(".pag-data-table .ant-table-scroll > .ant-table-body") as any;
        const height = (document.getElementById("gourddoll-layout-content") as any).clientHeight - 180 + "px";
        tablebody.style["max-height"] = tablebody.style["min-height"] = height;
      }
    }
    ((window as any).onresize as any) = loadTableWidth;
    ((function () {
      if (heightAdaption) {
        const interval = setInterval(() => {
          const tablebody = document.querySelector(".pag-data-table .ant-table-scroll > .ant-table-body") as any;
          const calcNum = (document.getElementById("gourddoll-layout-content") as any).clientHeight - 180;
          if (tablebody.outerHTML.includes("max-height")) {
            if (Number.parseInt(tablebody.style["max-height"]) === calcNum) {
              clearInterval(interval);
              return;
            }
          }
          tablebody.style["max-height"] = tablebody.style["min-height"] = calcNum + "px";
        }, 100);
      }
    })());


    return {
      dataSource,
      rowKey,
      pagination,
      rowSelection,
      columns,
      handlePaginationChange,
    };
  }
});