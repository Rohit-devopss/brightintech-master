# Base image
FROM node:latest

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install project dependencies
Run npm install

# Copy project files
COPY . .

# Expose a port (if needed)
EXPOSE 3000

# Start the React development server
CMD ["npm", "start"]
