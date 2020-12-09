import { UserOutlined, LockOutlined } from "@ant-design/icons-vue";
import { defineComponent, reactive, ref, computed } from "vue";
import router from "@/router";
import { setToken } from "@/share/token";

export default defineComponent({
  name: "Login",
  components: {
    UserOutlined,
    LockOutlined,
  },
  setup() {
    const formInline = reactive({
      user: "",
      password: "",
      code: ""
    });

    const logintxt = "登 录";
    const loginedtxt = "登录中···";
    let btnText = ref(logintxt);

    function handleSubmit() {
      btnText.value = loginedtxt;
      console.log(formInline);
      setToken("1");
      setTimeout(() => {
        router.push({ path: "/" });
      }, 2000);
    }

    const btnIsDisabled = computed(
      () =>
        formInline.user === "" ||
        formInline.password === "" ||
        formInline.code === "" ||
        btnText.value == loginedtxt
    );

    return { formInline, handleSubmit, btnText, btnIsDisabled };
  },
});