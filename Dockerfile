# specify the node base image with your desired version node:<version>
FROM node:14
USER node

# Environment stuff
ENV NPM_CONFIG_LOGLEVEL info
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin # optionally if you want to run npm global bin without specifying path

# replace this with your application's default port
EXPOSE 8888

# What to run
CMD ["node","index.js"]
