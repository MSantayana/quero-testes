FROM node:14.16.1-alpine

WORKDIR /app/server

COPY package*.json ./
RUN npm install express
RUN npm install

COPY . .

EXPOSE 3000

CMD npm run dev