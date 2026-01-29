FROM nginx:1.29.4-alpine3.23-slim

EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
