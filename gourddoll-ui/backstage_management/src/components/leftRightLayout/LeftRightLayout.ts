import { defineComponent } from "vue";

export default defineComponent({
  name: "LeftRightLayout",
  props: {
    borderColor: {
      type: String,
      default: "#eee",
    },
  },
});
