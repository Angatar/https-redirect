FROM nginx:alpine

EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
