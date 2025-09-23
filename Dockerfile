# Use Node.js base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy files
COPY index.js .

# Expose port
EXPOSE 3000

# Run app
CMD ["node", "index.js"]
