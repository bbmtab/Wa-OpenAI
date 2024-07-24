#!/bin/sh
# Replace "key" with the value of KEY in the key.json file
sed -i "s/\"keyopenai\": \"key\"/\"keyopenai\": \"${KEY}\"/" /app/key.json

# Start the Node.js application
# node index.js (old cmd)
pm2 start /app/index.js --name "wa-openai" --no-daemon
