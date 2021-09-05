import { UserOutlined, LockOutlined } from "@ant-design/icons-vue";
import { defineComponent, reactive, ref, computed } from "vue";
import UserController from "@/service/controller/system/userController";
import router from "@/router";
import store from "@/store";
import { useForm } from "@ant-design-vue/use";
import { message } from "ant-design-vue";

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

    if (Object.is(process.env.NODE_ENV as string, "development")) {
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

    // let validateInfos = reactive<any>({});
    const registerVisible = ref<boolean>(false);
    const modelRef: any = reactive({
      nickName: "",
      userName: "",
      admin: false,
      password: "",
      confirmPassword: "",
    });

    const rulesRef: any = reactive({
      nickName: [
        {
          required: true,
          message: "请输入姓名",
        },
      ],
      userName: [
        {
          required: true,
          message: "请输入用户名",
        },
      ],
      password: [
        {
          required: true,
          message: "请输入密码",
        },
      ],
      confirmPassword: [
        {
          required: true,
          message: "请输入确认密码",
        },
      ],
    });
    const { resetFields, validateInfos, validate } = useForm(
      modelRef,
      rulesRef
    );

    function onCancel() {
      registerVisible.value = false;
    }
    function onSubmit() {
      validate().then(() => {
        userService.register(modelRef).then(() => {
          message.success("注册成功，可直接登录");
          formInline.user = modelRef.userName;
          formInline.password = modelRef.password;
          registerVisible.value = false;
        });
      });
    }
    function showRegister() {
      resetFields();
      registerVisible.value = true;
    }

    return {
      formInline,
      handleSubmit,
      btnText,
      btnIsDisabled,
      loadCodeImg,
      modelRef,
      rulesRef,
      registerVisible,
      onCancel,
      onSubmit,
      showRegister,
      validateInfos,
    };
  },
});
