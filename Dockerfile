FROM node:alpine
WORKDIR /app/user

COPY package.json .
RUN npm install --production

EXPOSE 1234

COPY . .
CMD node app.js
