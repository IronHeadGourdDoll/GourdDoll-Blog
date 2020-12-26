import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import { Antd } from "./share/plugins/ant-design";
import * as components from "@/components";

const app = createApp(App);

app.use(store);
app.use(router);
app.use(Antd);
for (const component of Object.values(components)) {
  app.component(component.name, component);
}

app.mount("#app");
