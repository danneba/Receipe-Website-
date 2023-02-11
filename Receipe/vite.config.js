import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";
import pages from "vite-plugin-pages";
import layout from "vite-plugin-vue-layouts";
import Components from "unplugin-vue-components/vite";
// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    pages({
      nuxtStyle: true,
    }),
    ,
    layout(),
    Components(),
  ],
});
