# specify the node base image with your desired version node:<version>
FROM node:14

# Environment stuff
WORKDIR /usr/src/app
ENV NPM_CONFIG_LOGLEVEL info

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
