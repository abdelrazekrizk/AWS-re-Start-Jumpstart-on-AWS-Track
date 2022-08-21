# Define what image we want to build
FROM node:14-alpine

# Create app directory

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

# Copy our app source to the app directory
COPY package*.json ./

USER node

# Install dependencies
RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "app.js" ]