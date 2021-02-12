import { defineComponent, ref, useAsync, useContext } from "@nuxtjs/composition-api";

export default defineComponent({
  // asyncData: async function (context) {
  //   const data = await context.$axios.get("http://39.99.195.107:8080/code");
  //   msg = ref(JSON.stringify(data.data));
  // },
  setup: function (props: any, context: any) {

    const msg = ref(useAsync(() => {
      return useContext().$axios.get("http://39.99.195.107:8080/code")
        .then(({ data }) => {
          return JSON.stringify(data);
        });
    }));

    function change() {
      msg.value = "内容改变了";
    }

    function refresh() {
      // context.$nuxt.refresh();
      // useMeta().
      // useAsync().value.
      // console.log(context2.nuxt);
      // useContext().ssrContext.r
    }


    return { msg, change, refresh };
  },
});