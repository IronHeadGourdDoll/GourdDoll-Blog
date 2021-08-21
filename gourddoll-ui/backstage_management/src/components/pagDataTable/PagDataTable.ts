import { defineComponent, reactive, SetupContext, toRefs, watch } from "vue";
import pageSizeEnum, { pageSizes } from "@/service/enumeration/pageSizeEnum";
import { throttle } from "@/share/utils";
import calcTableHeight from "./calcTableHeight";

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
    dataSource: {
      type: Array,
      default: () => [],
    },
    columns: {
      type: Array,
      default: () => [],
    },
    total: {
      type: [Number, BigInt],
      default: 0,
    },
    selectedRowKeys: {
      type: Array,
      default: () => [],
    },
    selectedRows: {
      type: Array,
      default: () => [],
    },
    calcHeight: {
      type: Number,
      default: 380,
    },
    adaptiveHeight: {
      type: Boolean,
      default: true,
    },
    scrollX: {
      type: Number,
      default: 1200,
    },
    scrollY: {
      type: Number,
      default: 300,
    },
  },
  setup(props: any, context: SetupContext) {
    const { total, calcHeight, dataSource } = toRefs(props);
    const selectedRowKeys = reactive(props.selectedRowKeys);
    const selectedRows = reactive(props.selectedRows);

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
      const loadTableWidth = () => {
        calcTableHeight(calcHeight.value);
      };
      window.onresize = throttle(loadTableWidth, 300);
      watch(dataSource, loadTableWidth, { immediate: true });
    }

    loadData();

    return {
      pagination,
      rowSelection,
      handlePaginationChange,
    };
  },
});
