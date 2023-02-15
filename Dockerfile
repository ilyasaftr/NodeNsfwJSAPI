FROM node:lts
RUN apt-get update -y && apt-get install -y g++ make python3

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm ci
# Bundle app source
COPY . .

EXPOSE 5656
ENTRYPOINT [ "npm", "start" ]
