FROM node:latest

WORKDIR /sunnah

COPY . .

RUN npm install

ENTRYPOINT ["node", "app.js"]
