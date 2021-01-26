FROM node:12 as builder
WORKDIR /app
COPY . .
RUN yarn && yarn build

FROM nginx
COPY --from=builder /app/build/ /usr/share/nginx/html
