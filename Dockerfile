FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS development.jog68.mongodb.net
ENV MONGODB_USERNAME vaibhav
ENV MONGODB_PASSWORD O0PZDFmhRva2WvRy

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]