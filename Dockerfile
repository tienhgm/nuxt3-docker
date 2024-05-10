FROM node:18.16-alpine as build
WORKDIR /app
COPY package*.json ./
RUN yarn install
COPY ./ .
RUN yarn build
CMD ["node", ".output/server/index.mjs"]
