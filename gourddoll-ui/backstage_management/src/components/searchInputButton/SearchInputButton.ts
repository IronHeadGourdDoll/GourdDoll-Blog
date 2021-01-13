import { defineComponent, SetupContext, watch, ref } from "vue";
import { SearchOutlined } from "@ant-design/icons-vue";

/**
 * 搜索事件
 */
const searchEvent = "searchQuery";

export default defineComponent({
  name: "SearchInputButton",
  components: {
    SearchOutlined,
  },
  props: {
    placeholder: {
      type: String,
      required: true,
    },
    text: {
      type: String,
      required: true,
    },
    width: {
      type: Number,
      default: 350,
    },
  },
  setup(props: any, context: SetupContext) {
    function search(inputText: string) {
      context.emit(searchEvent, inputText);
    }

    const value = ref("");
    watch(value, (v) => {
      context.emit("update:text", v);
    });

    return { value, search };
  },
});
