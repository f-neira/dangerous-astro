// @ts-check
import { defineConfig } from "astro/config";
import node from "@astrojs/node";
import sitemap from "@astrojs/sitemap";

// https://astro.build/config
export default defineConfig({
  // URL base del sitio (usada para sitemap y OG tags)
  site: "http://localhost:6767",
  // Modo server (SSR) con Node adapter
  output: "server",
  adapter: node({
    mode: "standalone", // App autocontenida con servidor HTTP propio
  }),
  integrations: [
    // Genera sitemap.xml automaticamente (excluye 404)
    sitemap({
      filter: (page) => !page.includes("/404"),
    }),
  ],
});
