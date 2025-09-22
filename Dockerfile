# Utilise une image NGINX officielle
FROM nginx:alpine

# Supprime les fichiers par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copie tes fichiers publics dans le dossier NGINX
COPY public /usr/share/nginx/html

# Expose le port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
