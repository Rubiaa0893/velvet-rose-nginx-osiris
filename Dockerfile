# Imagen oficial de Nginx
FROM nginx:stable-alpine

# Agregar la configuración personalizada
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar la página web de Osiris
COPY index.html /usr/share/nginx/html/index.html

# Puerto utilizado por el servidor
EXPOSE 10000

# Iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
