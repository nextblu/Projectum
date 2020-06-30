# build stage
FROM node:lts-alpine as build-stage
WORKDIR .
COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn run build

# production stage
RUN echo 'Production stage started'
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
