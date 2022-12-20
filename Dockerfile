FROM nginx:mainline-alpine-slim

EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
