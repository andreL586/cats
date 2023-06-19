import { createWebHistory, createRouter } from "vue-router";
import LoginView from "@/views/LoginView.vue"
import ProductsView from "@/views/ProductsView.vue"

const routes = [
    {
        path: '/',
        redirect: {
            name: "LoginView"
        }
    },
    {
        path: "/login",
        name: "LoginView",
        component: LoginView
    },
    {
        path: "/products",
        name: "ProductsView",
        component: ProductsView
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;