module.exports = {
  root: true,
  env: {
    browser: true,
    node: true,
  },
  parser: 'vue-eslint-parser',
  extends: [
    '@nuxtjs/eslint-config-typescript',
    'prettier',
    'prettier/vue',
    'plugin:prettier/recommended',
    'plugin:nuxt/recommended',
  ],
  plugins: ['prettier'],
  // add your custom rules here
  rules: {
    "no-debugger": "off",
    "no-console": "off",
    "indent": "off",
    "comma-dangle": "off",
    "prefer-const": "off",
    "no-extra-semi": "off",
    "semi": "off",
    "@typescript-eslint/no-explicit-any": "off",
    "no-non-null-assertion": "off",
    "@typescript-eslint/explicit-module-boundary-types": "off"
  },
}
