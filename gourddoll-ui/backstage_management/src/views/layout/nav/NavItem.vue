<template>
  <a-sub-menu
    v-if="item.children && item.children.length > 0"
    :key="item.pathCode"
  >
    <template #title>
      <span>
        <SnippetsOutlined />
        <span>{{ item.label }}</span>
      </span>
    </template>
    <NavItem v-for="child in item.children" :key="child.pathCode" :item="child">
    </NavItem>
  </a-sub-menu>
  <a-menu-item v-else :key="item.pathCode">
    <span>
      <TagOutlined />
      <span>{{ item.label }}</span>
    </span>
  </a-menu-item>
</template>
<script>
import { SnippetsOutlined, TagOutlined } from "@ant-design/icons-vue";
export default {
  name: "NavItem",
  props: {
    item: {
      type: Object,
      required: true
    }
  },
  components: {
    SnippetsOutlined,
    TagOutlined
  }
};
</script>
