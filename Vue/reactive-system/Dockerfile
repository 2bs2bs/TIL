FROM node:18

WORKDIR /app/reactive-system/components-basics

COPY package*.json ./

COPY . .

RUN npm install

CMD ["npm", "run", "dev","--","--host","--port","8080"]
