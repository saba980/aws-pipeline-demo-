# Use a parent image, e.g., an official Node.js image
FROM node:18-alpine AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Build the application (if applicable, e.g., a React app)
# RUN npm run build

# Define the command to run the application
CMD ["npm", "start"]
