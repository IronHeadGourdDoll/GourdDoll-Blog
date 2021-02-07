import { h } from "vue";
import { default as EllipsisTooltip } from "./EllipsisTooltip.vue";

export function createTableEllipsisCell(width: number, title: string) {
  width = width - 32; //减去ant的cell外边距
  return h(EllipsisTooltip, { width, title });
}
