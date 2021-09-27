<template>
  <a-menu
    theme="dark"
    mode="inline"
    v-model:openKeys="openKeys"
    @click="showContent"
  >
    <NavItem v-for="menu in menus" :key="menu.pathCode" :item="menu"></NavItem>
  </a-menu>
</template>

<script lang="ts">
import { defineComponent, ref } from "vue";
import menuHelp from "@/share/cache/menu";
import { isUrl, openWindow } from "@/share/utils";
import router from "@/router";
import NavItem from "./NavItem.vue";
export default defineComponent({
  name: "Nav",
  components: {
    NavItem,
  },
  setup() {
    const menus = menuHelp.get();

    const openKeys = ref([]);

    function showContent({ key }: { key: string }) {
      if (isUrl(key)) {
        openWindow(key);
        return;
      }
      router.push({ name: key });
    }

    return { menus, openKeys, showContent };
  },
});
</script>
