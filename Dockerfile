FROM node:12-alpine AS base

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app

COPY --chown=node:node index.js package*.json ./

USER node

FROM base AS development
RUN npm i

FROM base AS production
RUN npm i --production

CMD [ "npm", "start"]