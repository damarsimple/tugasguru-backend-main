FROM debian:stable-slim
WORKDIR /app


COPY package.json .
RUN apt-get update && apt-get install nodejs npm build-essential python3-pip python3  -y
RUN npm install -g yarn
RUN yarn global add prisma  
RUN yarn install 
COPY . .
