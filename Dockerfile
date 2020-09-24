# Build the app

FROM node:8.9.3 as app-build
WORKDIR /app
COPY . .
COPY src/environments/environment.prod.ts.example src/environments/environment.prod.ts

RUN npm install && npm run build

# Serve it on nginx

FROM nginx
COPY .docker/nginx.conf /etc/nginx/nginx.conf
COPY --from=app-build /app/dist/badgr-ui /usr/share/nginx/html
EXPOSE 80