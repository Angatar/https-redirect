FROM nginx:1.27.0-alpine3.19-slim

EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
