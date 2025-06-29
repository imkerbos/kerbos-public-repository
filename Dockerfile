FROM docker.io/library/nginx:stable-alpine
WORKDIR /app
COPY dist/ /app/html/
RUN rm -f /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf || true
RUN chown -R 101:101 /app
USER nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
