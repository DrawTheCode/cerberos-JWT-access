FROM node:22.12.0-alpine AS init
RUN echo "Creando la imagen inicial. 🗒️"
ARG RMT_DIR
ENV DIR=${RMT_DIR}
USER root
RUN mkdir -p $DIR && \
    chown -R node:node $DIR
WORKDIR $DIR
RUN echo "Imagen inicial. ✔️"

FROM init AS build
RUN echo "Creando imagen de Build. 🛠️"
RUN apk update && \
    apk add --no-cache dumb-init
COPY --chown=node:node \
     package*.json \
     tsconfig*.json \
     src $DIR/
RUN npm i --production=false
RUN npm run build && \
    npm prune --production
RUN echo "Imagen de Build. ✔️"

FROM init AS developer
ARG PORT
ENV PORT=$PORT
ENV NODE_ENV=developer
COPY package.json $DIR/
COPY package-lock.json $DIR/
RUN npm i
COPY nodemon.json $DIR/
COPY tsconfig.json $DIR/
COPY src $DIR/src
EXPOSE $PORT
RUN echo "VERSION: ${NODE_ENV} / PORT: ${PORT} . ⚙️"
CMD ["npm","run","start:dev"]

FROM init AS production
RUN echo "Creando versión de producción. 🌐"
ENV NODE_ENV=production
ENV PORT=$PORT
USER node
COPY --from=build /usr/bin/dumb-init /usr/bin/dumb-init
COPY --from=build $DIR/node_modules $DIR/node_modules
COPY --from=build $DIR/dist $DIR/dist
EXPOSE $PORT
RUN echo "Versión de producción. 🚀"
CMD ["dumb-init","node","dist/main.js"]