// import { UserOutlined, LockOutlined } from "@ant-design/icons-vue";
import { defineComponent, reactive, ref, computed, useContext, SetupContext } from "@nuxtjs/composition-api";
import UserController from "@/service/controller/system/userController";

export default defineComponent({
  name: "login",
  components: {
    // UserOutlined,
    // LockOutlined
  },
  setup(props: unknown, context: SetupContext) {
    const router = context.root.$router;
    const { store, $axios } = useContext();

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

    const userService = new UserController($axios);
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

    function handleSubmit(event: Event) {
      event.preventDefault();
      event.stopPropagation();

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
