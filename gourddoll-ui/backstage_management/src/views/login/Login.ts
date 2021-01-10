import { UserOutlined, LockOutlined } from "@ant-design/icons-vue";
import { defineComponent, reactive, ref, computed } from "vue";
import UserController from "@/service/controller/system/userController";
import router from "@/router";
import store from "@/store";

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
      code: "",
      img: "",
    });

    if (Object.is(process.env.NODE_ENV, "development")) {
      formInline.user = "admin";
      formInline.password = "admin123";
    }

    const logintxt = "登 录";
    const loginedtxt = "登录中···";
    let btnText = ref(logintxt);

    const userService = new UserController();
    let uuid = "";

    function loadCodeImg() {
      formInline.code = "";
      const codedata = userService.getVerificationCode();
      codedata.then((data) => {
        formInline.img = `data:image/png;base64,${data.img}`;
        uuid = data.uuid;
      });
    }
    loadCodeImg();

    function handleSubmit() {
      btnText.value = loginedtxt;

      store
        .dispatch("user/login", {
          username: formInline.user,
          password: formInline.password,
          code: formInline.code,
          uuid: uuid,
        })
        .then(() => {
          router.push({ path: "/" });
        })
        .catch(() => {
          btnText.value = logintxt;
          loadCodeImg();
        });
    }

    const btnIsDisabled = computed(
      () =>
        formInline.user === "" ||
        formInline.password === "" ||
        formInline.code === "" ||
        btnText.value == loginedtxt
    );

    return { formInline, handleSubmit, btnText, btnIsDisabled, loadCodeImg };
  },
});
