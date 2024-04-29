FROM cypress/included:cypress-12.17.3-node-18.16.1-chrome-114.0.5735.133-1-ff-114.0.2-edge-114.0.1823.51-1

COPY package.json /app

WORKDIR /app

RUN npm install

USER cypress

RUN npm run test
