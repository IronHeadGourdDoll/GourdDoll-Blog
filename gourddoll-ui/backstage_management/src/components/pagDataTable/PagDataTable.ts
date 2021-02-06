import { defineComponent, reactive, SetupContext, toRefs, watch } from "vue";
import pageSizeEnum, { pageSizes } from "@/service/enumeration/pageSizeEnum";
import { throttle } from "@/share/util";
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
  },
  setup(props: any, context: SetupContext) {
    const { total, calcHeight, dataSource } = toRefs(props);

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
      context.emit(updateSelectedRowKeys, []);
      context.emit(updateSelectedRows, []);
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

    const sonSelectedRowKeys = reactive([]);
    const rowSelection = {
      selectedRowKeys: sonSelectedRowKeys,
      hideDefaultSelections: true,
      onChange: (keys: any, rows: any) => {
        context.emit(updateSelectedRowKeys, keys);
        context.emit(updateSelectedRows, rows);
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
