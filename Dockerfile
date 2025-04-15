# Use official Node.js image from Docker Hub
FROM node:18

# Set working directory in the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# App runs on port 3000
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
