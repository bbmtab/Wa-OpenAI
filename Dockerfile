FROM node:alpine

WORKDIR /app
COPY . /app

RUN apk update \
    && apk add --no-cache git \
    && apk add --no-cache nodejs \
    && npm install mime-types \
    && npm install
    

# Read environment variables from key.json file
#ENV keyopenai=$(cat /key.json | jq -r .keyopenai)

CMD ["node", "index.js"]
