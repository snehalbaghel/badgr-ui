# Build the app

FROM node:8 as app-build

WORKDIR /app
ADD . .
RUN ./.docker/init-config.sh
RUN npm install && npm run build

# Serve it on nginx

FROM nginx:latest

COPY .docker/nginx.conf /etc/nginx/nginx.conf
COPY --from=app-build /app/dist /usr/share/nginx/html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]