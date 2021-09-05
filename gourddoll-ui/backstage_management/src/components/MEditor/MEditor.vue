<template>
    <div id="vditor"></div>
</template>
<script >
import { defineComponent, reactive, SetupContext, toRefs, watch, ref, onMounted } from "vue";
import Vditor from "vditor";
import "vditor/dist/index.css";
export default defineComponent({
    name: "MEditor",
    props: {
        value: {
            type: String,
            default: "",
        },
    },
    setup(props) {
        const contentEditor = ref("");
        onMounted(() => {
            contentEditor.value = new Vditor("vditor", {
                height: 360,
                toolbarConfig: {
                    pin: true,
                },
                cache: {
                    enable: false,
                },
                after: () => {
                    contentEditor.value.setValue("hello,Vditor+Vue!");
                },

            });
        });
        return {
            contentEditor
        }
    }
})
</script>
<style scoped>
a {
    color: #42b983;
}
</style>