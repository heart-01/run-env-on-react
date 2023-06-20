FROM node:16-alpine as build-deps
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --omit=dev
COPY . .
RUN npm run build

FROM nginx:1.22-alpine

ARG BUILD_NGINX_CONFIG=nginx.conf
COPY --from=build-deps /usr/src/app/build /usr/share/nginx/html
COPY --from=build-deps /usr/src/app/${BUILD_NGINX_CONFIG} /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["/bin/sh", "-c", "chmod +x /usr/share/nginx/html/env_loader.sh && /usr/share/nginx/html/env_loader.sh && nginx -g \"daemon off;\""]
