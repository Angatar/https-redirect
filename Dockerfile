FROM nginx:1.29.2-alpine3.22-slim

EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
