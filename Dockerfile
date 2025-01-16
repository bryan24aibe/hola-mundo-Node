# Usa una imagen base oficial de Node.js
FROM node:16

# Crea un directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la aplicación
COPY . .

# Expone el puerto en el que la app se ejecuta (por defecto 3000)
EXPOSE 3000

# Comando para ejecutar la app
CMD ["node", "index.js"]
