FROM node:14.16.1-alpine

ADD . /

WORKDIR /usr/app

COPY package*.json ./
RUN npm install -g express
RUN npm install

COPY . .

EXPOSE 3000

CMD npm run dev