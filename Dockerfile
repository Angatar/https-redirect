FROM nginx:1.22.0-alpine

EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
