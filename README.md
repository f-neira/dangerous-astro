# DANGEROUS ASTRO

Frontend oficial de **Dangerous Band**. Sitio web con showcases, fechas de shows, información de la banda y más.

## Stack

- **Astro 5** — Framework web con view transitions
- **TypeScript** — Tipado estricto
- **Node.js** + **@astrojs/node** (modo standalone)
- **@astrojs/sitemap** — Generación de sitemap

## Estructura

```
src/
├── assets/         # Imágenes, logos, SVGs
├── components/     # Componentes reutilizables
│   ├── Carousel.astro
│   ├── ContactModal.astro
│   ├── Footer.astro
│   ├── LoadingOverlay.astro
│   ├── Navigation.astro
│   ├── NextShowModal.astro
│   ├── SocialFloat.astro
│   └── ...
├── data/           # Datos estáticos (CSV)
├── layouts/        # Layout principal
│   └── Layout.astro
└── pages/          # Rutas
    ├── index.astro
    ├── about.astro
    ├── shows.astro
    └── 404.astro
```

## Scripts

| Comando           | Descripción            |
| ----------------- | ---------------------- |
| `npm run dev`     | Servidor de desarrollo |
| `npm run build`   | Build producción       |
| `npm run preview` | Vista previa del build |

## Variables de entorno

```env
API_TOKEN=token_de_la_api
```

## Desarrollo

```bash
npm install
npm run dev
```

El servidor corre en `http://localhost:4321`.
