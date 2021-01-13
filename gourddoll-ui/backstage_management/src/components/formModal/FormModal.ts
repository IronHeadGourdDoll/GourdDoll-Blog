import { toRefs, SetupContext, computed } from "vue";

/**
 * 保存完成事件
 */
const saveEvent = "save";

/**
 * 取消事件
 */
const cancelEvent = "cancel";

/**
 * 重置事件
 */
const resetEvent = "reset";

export default {
  name: "FormModal",
  props: {
    visible: {
      type: Boolean,
      default: false,
    },
    modalWidth: {
      type: Number,
      default: 580,
    },
    title: {
      type: String,
      required: true,
    },
    isReset: {
      type: Boolean,
      default: true,
    },
  },
  setup(props: any, context: SetupContext) {
    const { modalWidth } = toRefs(props);
    const formWidth = computed(() => modalWidth.value + 50);

    function onSubmit(e: Event) {
      e.preventDefault();
      context.emit(saveEvent);
    }

    function onCancel() {
      context.emit(cancelEvent);
      context.emit(resetEvent);
    }

    function onReset() {
      context.emit(resetEvent);
    }

    return {
      onSubmit,
      onCancel,
      onReset,
      formWidth,
    };
  },
};
