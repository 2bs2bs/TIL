FROM node:18
WORKDIR /app/vue-project
COPY package*.json ./
COPY . .
RUN npm install
CMD ["npm", "run", "dev", "--", "--host"]
