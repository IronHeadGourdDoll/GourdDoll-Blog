<template>
  <div class="p-4">
    <NormalChart />
  </div>
</template>

<script lang="ts">
import { defineComponent, ref } from "vue";
import NormalChart from "./components/NormalChart.vue";
export default defineComponent({
  name: "Analysis",
  components: {
    NormalChart,
  },
  setup() {
    return {};
  },
});
</script>
