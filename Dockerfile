# FROM node
# WORKDIR /app

# COPY . .
# EXPOSE 3000

# COPY package*.json ./

# ENTRYPOINT start npm

FROM node:25.7.0-bookworm

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5173

CMD ["npm", "start"]