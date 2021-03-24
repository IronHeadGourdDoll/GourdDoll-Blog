import { defineComponent, reactive } from 'vue';
const options: { value: string; disabled: boolean }[] = [];
for (let i = 0; i < 10000; i++) {
  const value = `${i.toString(36)}${i}`;
  options.push({
    value,
    disabled: i === 10,
  });
}
export default defineComponent({
  name: "MulSelect",
  setup() {
    const state = reactive({
      options,
      value: ['a10', 'c12'],
    });
    return state;
  },
});