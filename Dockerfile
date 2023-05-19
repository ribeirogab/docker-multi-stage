FROM node:12-alpine AS base

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app
COPY --chown=node:node index.js package*.json ./
USER node

FROM base AS build
RUN npm i --production
#  If you have any build process, it would come here

FROM base AS development
RUN npm i

FROM node:12-alpine AS production
WORKDIR /home/node/app
COPY --from=build /home/node/app /home/node/app

CMD [ "npm", "start"]