FROM node:18.18.2-alpine3.18

WORKDIR /buildingpagesfrontend

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

COPY . .

CMD [ "npm", "start" ]