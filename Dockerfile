FROM node:alpine3.23
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY ./app/server.js ./
EXPOSE 3000
CMD ["node","server.js"]
