import { defineComponent } from "vue";

export default defineComponent({
  name: "EllipsisTooltip",
  props: {
    width: {
      type: [Number, String],
      required: true,
    },
    title: {
      type: [String],
      required: true,
    },
  },
});
