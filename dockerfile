# Use Node base image
FROM node:16

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app files
COPY . .

# Expose port and start app
EXPOSE 3000
CMD ["npm", "start"]

