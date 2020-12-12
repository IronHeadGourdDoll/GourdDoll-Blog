import { UserOutlined, LockOutlined } from "@ant-design/icons-vue";
import { defineComponent, reactive, ref, computed } from "vue";
import router from "@/router";
import { setToken } from "@/share/token";
import UserController from "@/service/controller/user/userController";
import MenuController from "@/service/controller/menu/menuController";
import menuHelp from "@/share/cache/menu";
import userInfoHelp from "@/share/cache/userInfo";

export default defineComponent({
  name: "Login",
  components: {
    UserOutlined,
    LockOutlined
  },
  setup() {
    const formInline = reactive({
      user: "",
      password: "",
      code: "",
      img: ""
    });

    if (Object.is(process.env.NODE_ENV, "development")) {
      formInline.user = "admin";
      formInline.password = "admin123";
    }

    const logintxt = "登 录";
    const loginedtxt = "登录中···";
    let btnText = ref(logintxt);

    const userService = new UserController();
    const menuService = new MenuController();
    let uuid = "";

    function loadCodeImg() {
      formInline.code = "";
      const codedata = userService.GetVerificationCode();
      codedata.then(data => {
        formInline.img = `data:image/png;base64,${data.img}`;
        uuid = data.uuid;
      });
    }
    loadCodeImg();

    function handleSubmit() {
      btnText.value = loginedtxt;

      userService
        .login({
          username: formInline.user,
          password: formInline.password,
          code: formInline.code,
          uuid: uuid
        })
        .then(data => {
          setToken(data.access_token);
          return userService.getInfo();
        })
        .then(data => {
          userInfoHelp.set(data);
          return menuService.GetUserMenu();
        })
        .then(data => {
          menuHelp.set(data);
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
  }
});
