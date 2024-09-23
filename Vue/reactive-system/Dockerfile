FROM node:18

WORKDIR /app/reactive-system

COPY package*.json ./

COPY . .

RUN npm install

CMD ["npm", "run", "dev","--","--host"]
