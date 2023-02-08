# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json file to the container
COPY package.json .

# Install the dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Install
RUN npm install baileys

# Load the environment variables from config.env
ENV $(cat config.env | xargs)

# Specify the command to run when the container starts
CMD ["node", "index.js"]
