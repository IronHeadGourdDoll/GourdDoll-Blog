import { defineComponent } from "@nuxtjs/composition-api";

function getMsg() {
  if (Math.random() >= 0.5) {
    return "1111";
  }
  return "222";
}

export default defineComponent({
  asyncData: function () {
    return { msg: getMsg() };
  },
  setup: function (props: any, context: any) {

    function refresh() {
      context.root.$nuxt.refresh();
      // console.log(context.root);
      // console.log(context.root.$nuxt);
      // console.log(context.root.$nuxt.refresh);
    }


    return { refresh };
  },
});