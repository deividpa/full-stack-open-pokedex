# Usamos una imagen base oficial de Node
FROM node:18-alpine

# Creamos un directorio de trabajo
WORKDIR /app

# Copiamos package.json y package-lock.json (si existe)
COPY package*.json ./

# Instalamos las dependencias
RUN npm install

# Copiamos el resto del código fuente
COPY . .

# Construimos el frontend
RUN npm run build

# Exponemos el puerto, por ejemplo el 3000
EXPOSE 3000

# Variable de entorno que definiremos en Azure
ENV PORT=3000

# Iniciamos la aplicación
CMD ["npm", "run", "start-prod"]