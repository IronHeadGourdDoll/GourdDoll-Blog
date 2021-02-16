export default {
  // Global page headers: https://go.nuxtjs.dev/config-head
  head: {
    title: 'user_interface',
    htmlAttrs: {
      lang: 'zh-cmn-Hans-CN',
    },
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: 'GourdDoll博客' },
    ],
    link: [{ rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }],
  },

  env: {
    VUE_APP_TOKEN: "Authorization",
    VUE_APP_MENU: "gourd_doll_menu",
    VUE_APP_TITLE: "GourdDoll博客",
    VUE_APP_API: "http://39.99.195.107:8080",
  },

  // Global CSS: https://go.nuxtjs.dev/config-css
  css: ['ant-design-vue/dist/antd.css'],

  // Plugins to run before rendering page: https://go.nuxtjs.dev/config-plugins
  plugins: [
    "@/plugins/antd-ui.ts",
    "@/plugins/router.ts",
    "@/plugins/axios.ts",
  ],

  // Auto import components: https://go.nuxtjs.dev/config-components
  components: true,

  // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
  buildModules: [
    // https://go.nuxtjs.dev/typescript
    '@nuxt/typescript-build',
    '@nuxtjs/composition-api',
  ],

  // Modules: https://go.nuxtjs.dev/config-modules
  modules: [
    // https://go.nuxtjs.dev/axios
    '@nuxtjs/axios',
  ],

  // Axios module configuration: https://go.nuxtjs.dev/config-axios
  axios: {
    baseURL: process.env.VUE_APP_API,
    browserBaseURL: process.env.VUE_APP_API,
  },
  publicRuntimeConfig: {
    axios: {
      baseURL: process.env.VUE_APP_API,
      browserBaseURL: process.env.VUE_APP_API,
    }
  },
  privateRuntimeConfig: {
    axios: {
      baseURL: process.env.VUE_APP_API,
      browserBaseURL: process.env.VUE_APP_API,
    }
  },

  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {
    transpile: ['ant-design-vue'],
    babel: {
      plugins: [
        ['import', {
          libraryName: 'ant-design-vue',
          libraryDirectory: 'es',
          style: 'css'
        }, 'ant-design-vue']
      ]
    }
  }
}
