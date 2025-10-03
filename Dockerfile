# Use Node.js 16 as base image
FROM node:16

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install deps
COPY package*.json ./
RUN npm install --only=production

# Copy app source
COPY . .

# Expose port
EXPOSE 8080

# Run app
CMD ["npm", "start"]
