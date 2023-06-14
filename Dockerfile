# Use the official Node.js 18 Alpine image as the base
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package.json package-lock.json ./

# Install project dependencies
RUN npm ci --only=production

# Copy the application code to the container
COPY . .

# Set the command to run when the container starts
CMD ["node", "index.js"]

