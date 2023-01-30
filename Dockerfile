FROM node:16-alpine
LABEL author='gsc2001' version='1.0'

ENV NODE_ENV=$NODE_ENV
ENV DEBUG=$DEBUG
VOLUME /app/node_modules
WORKDIR /app
COPY package*.json ./
RUN npm install --save-dev
COPY . .
EXPOSE 8080
ENTRYPOINT ["./entrypoint.sh"]
