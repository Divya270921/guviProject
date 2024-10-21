<<<<<<< HEAD
FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD ["npm", "start"]
=======
# Use a Node.js base image
FROM node:14

# Set working directory
WORKDIR WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the application
RUN npm run build

# Install a simple HTTP server
RUN npm install -g serve

# Expose port 80
EXPOSE 80

# Command to run the application
CMD ["serve", "-s", "build", "-l", "80"]
>>>>>>> a7404f28721d763bf073a701802ed986eeb30bdb

