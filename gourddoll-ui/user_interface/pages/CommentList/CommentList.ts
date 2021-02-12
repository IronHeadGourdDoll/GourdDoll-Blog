
import { defineComponent, ref } from "@nuxtjs/composition-api";
export default defineComponent({
  setup: function () {
    const data = ref<any>([])

    data.value = [
      {
        title: 'Ant Design Title 1',
      },
      {
        title: 'Ant Design Title 2',
      },
      {
        title: 'Ant Design Title 3',
      },
      {
        title: 'Ant Design Title 4',
      },
    ]

    return { data }
  },
});