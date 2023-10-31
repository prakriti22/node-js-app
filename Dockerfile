# Use an official Node.js runtime as a parent image
FROM node:14

# Create and set the working directory
WORKDIR /usr/src/app

# Install PM2 globally
RUN npm install -g pm2

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the application port
EXPOSE 3000

# Start the Node.js application with PM2
CMD ["pm2-runtime", "start", "app1.js"]
