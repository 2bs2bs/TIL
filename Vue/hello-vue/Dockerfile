FROM node:18

WORKDIR /app/hello-vue

COPY package*.json ./

COPY . .

RUN npm install

CMD ["npm", "run", "dev","--","--host"]