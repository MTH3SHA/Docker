FROM node:16

#Create app directory
WORKDIR /usr/src/app

#Install app dependencies
#A wildcard is used to ensure both package.json AND package-lock.json are copied
#where availble (npm@s+)
COPY package*.json ./

RUN npm install

#Bundle app source
COPY serverUpdated.js .

EXPOSE 3040
CMD ["node", "serverUpdated.js"]