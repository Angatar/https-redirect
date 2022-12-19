FROM nginx:1.23.2-alpine

EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
