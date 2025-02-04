# Use Node.js official image as base
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all the files from the current directory to the working directory in the container
COPY . .

# Expose the port on which the app runs
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]



