FROM node:latest
WORKDIR /app


COPY package.json .
RUN apt-get update && apt-get install  build-essential python3-pip python3  -y
RUN yarn global add prisma  
RUN yarn install --force
RUN echo export PATH="$PATH:$(yarn global bin)" >> ~/.bash_profile
EXPOSE 4000
COPY . .
