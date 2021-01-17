import { defineComponent, reactive, SetupContext, toRefs, watch } from "vue";
import pageSizeEnum, { pageSizes } from "@/service/enumeration/pageSizeEnum";
import { throttle } from "@/share/util";

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

export default defineComponent({
  name: "PagDataTable",
  props: {
    rowKey: String,
    dataSource: Array,
    columns: Array,
    total: [Number, BigInt],
    selectedRowKeys: Array,
    selectedRows: Array,
    calcHeight: {
      type: Number,
      default: 380,
    },
    adaptiveHeight: {
      type: Boolean,
      default: true,
    },
  },
  setup(props: any, context: SetupContext) {
    const { total, calcHeight } = toRefs(props);
    const selectedRowKeys = reactive(props.selectedRowKeys);
    const selectedRows = reactive(props.selectedRows);
    const dataSource = reactive(props.dataSource);

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
      clearSelected();
      context.emit(loadDataEvent, pagination.current, pagination.pageSize);
    }

    /**
     * 清空选中值
     */
    function clearSelected() {
      selectedRowKeys.splice(0, selectedRowKeys.length);
      selectedRows.splice(0, selectedRows.length);
      context.emit(updateSelectedRowKeys, selectedRowKeys);
      context.emit(updateSelectedRows, selectedRows);
    }

    watch(dataSource, () => {
      clearSelected();
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
      },
    };

    if (props.adaptiveHeight) {
      //高度自适应
      const getTableDom = () => {
        let dom = undefined as any;
        if (dom) return dom;
        const getDom = () =>
        (dom = document.querySelector(
          ".pag-data-table .ant-table-scroll > .ant-table-body"
        ));
        return getDom();
      };
      const loadTableWidth = () => {
        const tableHeight = document.body.offsetHeight - calcHeight.value;
        const dom = getTableDom();
        dom.style["height"] = dom.style["min-height"] = dom.style[
          "max-height"
        ] = tableHeight + "px";
      };
      window.onresize = throttle(loadTableWidth, 300);
      const interval = setInterval(() => {
        const rowsLength = document.querySelectorAll(".pag-data-table table tr")
          .length;
        if (rowsLength && rowsLength > 0) {
          loadTableWidth();
          clearInterval(interval);
        }
      }, 200);
    }

    loadData();

    return {
      pagination,
      rowSelection,
      handlePaginationChange,
    };
  },
});
