# Imagen base de Node.js 20 (Alpine = liviana)
FROM node:20-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar package.json y lockfile primero (aprovecha cache de Docker)
COPY package*.json ./
RUN npm install

# Copiar el resto del código fuente
COPY . .

# Prepara la aplicación para producción
RUN npm run build

# Configurar host y puerto para Astro
ENV HOST=0.0.0.0
ENV PORT=6767

# Puerto que expone el contenedor
EXPOSE 6767

# Comando de inicio
CMD ["node", "dist/server/entry.mjs"]