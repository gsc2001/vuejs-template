import { defineConfig } from 'vite'
// import { createVuePlugin as vue } from "vite-plugin-vue2";
import vue from "@vitejs/plugin-vue";

const path = require("path");
export default defineConfig({
  plugins: [vue()],
    resolve: {
        alias: {
            "@": path.resolve(__dirname, "./src")
        },
    },
  server: {
    host: '0.0.0.0',
    port: 8080,
  },
  hmr: {
    host: '0.0.0.0',
    port: 8080,
  },
  preview: {
    port: 8080,
  },
});
