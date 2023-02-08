FROM node:alpine

RUN \
apk update \
apk add --no-cache git \
apk add --no-cache nodejs

WORKDIR /app
COPY . .

RUN apk add git nodejs

RUN npm install

# Read environment variables from key.json file
#ENV keyopenai=$(cat /key.json | jq -r .keyopenai)

CMD ["node", "index.js"]
