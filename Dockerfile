FROM node:alpine
WORKDIR '/app'
COPY package.json .
RUN yarn
COPY . .
RUN [ "yarn", "build" ]

FROM nginx
# dest is default from nginx dockerhub doc
COPY --from=0 /app/build /usr/share/nginx/html