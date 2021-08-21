import { createRouter, createWebHistory, RouteRecordRaw } from "vue-router";
import Home from "../views/Home.vue";

const routes: Array<RouteRecordRaw> = [
  {
    path: "/",
    name: "Home",
    component: Home,
    redirect: "/dashboard/analysis",
    children: [
      {
        path: "dashboard/analysis",
        component: () => import("@/views/dashboard/analysis/List.vue"),
        name: "Analysis",
      },
    ],
  },
  {
    path: "/login",
    name: "Login",
    component: () => import("@/views/login/Login.vue"),
    meta: { label: "登录" },
  },
  {
    path: "/about",
    name: "About",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () =>
      import(/* webpackChunkName: "about" */ "../views/About.vue"),
    meta: { label: "关于" },
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
