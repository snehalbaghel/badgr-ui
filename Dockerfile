# Build the app

FROM node:8 as app-build

WORKDIR /app
ADD . .
RUN ./.docker/init-config.sh
RUN npm install && npm run build

# Serve it on nginx

FROM bitnami/nginx

COPY .docker/nginx.conf /opt/bitnami/nginx/conf/server_blocks/my_server_block.conf
COPY --from=app-build /app/dist /app
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
