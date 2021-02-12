<template>
  <a-list item-layout="horizontal" :data-source="data">
    <a-list-item slot="renderItem" slot-scope="item, index">
      <a-list-item-meta
        description="Ant Design, a design language for background applications, is refined by Ant UED Team"
      >
        <a slot="title" href="https://www.antdv.com/">{{ item.title }}</a>
        <a-avatar
          slot="avatar"
          src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"
        />
      </a-list-item-meta>
    </a-list-item>
  </a-list>
</template>

<style lang="scss" scoped>
.body {
  background-color: aliceblue;
  div {
    background-color: azure;
  }
}
</style>

<script lang="ts" src="./commentList.ts"></script>