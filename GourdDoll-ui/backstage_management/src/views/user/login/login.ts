import { UserOutlined, LockOutlined } from "@ant-design/icons-vue";
import { defineComponent, reactive, ref, computed } from "vue";
import router from "@/router";
import { setToken } from "@/share/token";
import UserController from "@/service/controller/user/userController";
import MenuController from "@/service/controller/menu/menuController";
import { message } from "ant-design-vue";

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
    const logintxt = "登 录";
    const loginedtxt = "登录中···";
    let btnText = ref(logintxt);

    const userService = new UserController();
    const menuService = new MenuController();
    let uuid = "";

    function loadCodeImg() {
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
          return menuService.GetUserMenu(data.userid);
        })
        .then(data => {
          console.log(data);
          router.push({ path: "/" });
        })
        .catch(() => {
          btnText.value = logintxt;
          message.warning("登录失败，请稍后重试！");
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
