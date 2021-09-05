<template>
  <div class="map">
    <div ref="chart" style="height: 500px; width: 600px"></div>
  </div>
</template>

<script lang="ts">
import * as echarts from "echarts";
import { reactive, ref, onMounted, SetupContext } from "vue";
import StatisticsController from "@/service/controller/blog/statisticsController";
export default {
  props: {},
  setup(props: any, context: SetupContext) {
    //启动函数
    var state = reactive({
      //创建响应式数据对象
      id: 1,
      chart: ref(),
    });

    const statisticsController = new StatisticsController();
    async function init() {
      if (state.chart) {
        // 图表初始化
        var myChart = echarts.init(state.chart);
        // 默认数据
        var option = {
          title: {
            text: "博客统计",
          },
          tooltip: {
            trigger: "axis",
          },
          axisLabel: {
            interval: 0, //横坐标的文字全部显示，不间隔
            rotate: 40,
          },
          xAxis: {
            type: "category",
            data: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
          },
          yAxis: {
            type: "value",
          },
          series: [
            {
              data: [150, 230, 224, 218, 135, 147, 260],
              type: "bar",
            },
          ],
        };
        await statisticsController.getCategoryBlogs().then((data) => {
          option.xAxis.data = data.xData;
          option.series[0].data = data.yData;
        });
        //指定配置项和数据显示
        myChart.setOption(option);
      }
    }
    onMounted(() => {
      init();
    });
    return state;
  },
};
</script>
