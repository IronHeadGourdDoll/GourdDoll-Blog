<template>
  <a-layout id="components-layout-custom-trigger">
    <a-layout-sider v-model:collapsed="collapsed" :trigger="null" collapsible>
      <div class="logo" />
      <Nav></Nav>
    </a-layout-sider>
    <a-layout>
      <a-layout-header class="layout-header">
        <div class="trigger-div">
          <menu-unfold-outlined
            v-if="collapsed"
            class="trigger"
            @click="() => (collapsed = !collapsed)"
          />
          <menu-fold-outlined
            v-else
            class="trigger"
            @click="() => (collapsed = !collapsed)"
          />
        </div>
        <div class="header-div">
          <Header></Header>
        </div>
      </a-layout-header>
      <a-layout-content class="layout-content">
        <Content></Content>
      </a-layout-content>
      <a-layout-footer class="layout-footer">
        <PageFoot />
      </a-layout-footer>
    </a-layout>
  </a-layout>
</template>

<style lang="scss" scoped>
#components-layout-custom-trigger {
  height: 100%;
  .logo {
    height: 32px;
    background: rgba(255, 255, 255, 0.2);
    margin: 16px;
  }
  .layout-header {
    background: #fff;
    padding: 0;
  }
  .trigger-div {
    display: inline-block;
    width: 65px;
  }
  .header-div {
    display: inline-block;
    width: calc(100% - 65px);
  }
  .trigger {
    font-size: 18px;
    line-height: 64px;
    padding: 0 24px;
    cursor: pointer;
    transition: color 0.3s;
    &:hover {
      color: #1890ff;
    }
  }
  .layout-content {
    margin: 24px 16px 0 16px;
    padding: 24px;
    background: #fff;
  }
  .layout-footer {
    text-align: center;
  }
}
</style>

<script>
import { Nav, PageFoot, Content, Header } from "./layout";
import { MenuUnfoldOutlined, MenuFoldOutlined } from "@ant-design/icons-vue";

export default {
  components: {
    MenuUnfoldOutlined,
    MenuFoldOutlined,
    Nav,
    PageFoot,
    Content,
    Header
  },
  data() {
    return {
      collapsed: false
    };
  }
};
</script>
