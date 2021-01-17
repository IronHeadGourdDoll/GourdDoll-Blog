import { nextTick } from "vue";

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
const getRowsLength = () =>
  document.querySelectorAll(".pag-data-table table tbody tr").length;

const loadTableWidth = (calcHeight: any) => {
  let tableHeight;
  if (getRowsLength() > 0) {
    tableHeight = document.body.offsetHeight - calcHeight;
  } else {
    tableHeight = 0;
  }
  const dom = getTableDom();
  if (!dom) return;
  dom.style["height"] = dom.style["min-height"] = dom.style["max-height"] =
    tableHeight + "px";
};

export default function (calcHeight: number) {
  nextTick().then(() => loadTableWidth(calcHeight));
}
