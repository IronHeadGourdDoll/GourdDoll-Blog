import { defineComponent, ref, useAsync, useContext, SetupContext } from "@nuxtjs/composition-api";

export default defineComponent({
  setup: function (props: any, context: SetupContext) {
    const msg = ref(useAsync(() => {
      return useContext().$axios.get("http://39.99.195.107:8080/code")
        .then(({ data }) => {
          return JSON.stringify(data);
        });
    }));

    function change() {
      msg.value = "内容改变了";
    }

    return { msg, change, };
  },
});