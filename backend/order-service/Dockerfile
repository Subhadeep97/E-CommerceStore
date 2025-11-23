# Dockerfile

# 1. Use base image
FROM node:18

# 2. Create working directory
WORKDIR /app

# 3. Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# 4. Copy remaining files
COPY . .

# 5. Expose custom service port (use 5000+ range to avoid conflicts)
EXPOSE 5003

# 6. Start the service
CMD ["node", "server.js"]
