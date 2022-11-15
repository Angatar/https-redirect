FROM nginx:mainline-alpine

EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
