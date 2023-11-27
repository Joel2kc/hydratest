# Use an official Node.js runtime as the base image
FROM node:21-alpine3.17

# Set the working directory in the container
WORKDIR /

#RUN npm install -g yarn

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 3000

CMD ["yarn","start"]
