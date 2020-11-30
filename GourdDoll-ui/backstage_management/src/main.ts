import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import { Antd } from "./share/plugins/ant-design";

const app = createApp(App);

app.use(store);
app.use(router);
app.use(Antd);

app.mount("#app");
