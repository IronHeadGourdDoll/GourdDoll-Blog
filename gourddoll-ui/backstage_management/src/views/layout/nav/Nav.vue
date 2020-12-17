<template>
  <a-menu theme="dark" mode="inline">
    <NavItem v-for="menu in menus" :key="menu.id" :item="menu"></NavItem>
  </a-menu>
</template>

<script lang="ts">
import { defineComponent, defineAsyncComponent } from "vue";
import menuHelp from "@/share/cache/menu";
export default defineComponent({
  name: "Nav",
  components: {
    NavItem: defineAsyncComponent(() => import("./NavItem.vue")),
  },
  setup() {
    const menus = menuHelp.get();
    return { menus };
  },
});
</script>
