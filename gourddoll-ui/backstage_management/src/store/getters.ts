const getters = {
  token: (state: any) => state.user.token,
  userInfo: (state: any) => state.user.userInfo,
  roles: (state: any) => state.user.roles,
  menu: (state: any) => state.user.menu,
};
console.log('1')
export default getters;
