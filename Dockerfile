# Använd den senaste Nginx-bilden
FROM nginx:latest
 
# Ta bort standard nginx-webbplatsen
RUN rm -rf /usr/share/nginx/html/*
 
# Kopiera de byggda filerna från dist-mappen till nginx
COPY dist/ /usr/share/nginx/html/
 
# Exponera porten 8080
EXPOSE 8080
 
# Starta nginx
CMD ["nginx", "-g", "daemon off;"]