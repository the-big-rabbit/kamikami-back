FROM node:20-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies (production only)
RUN npm ci --omit=dev

# Copy the rest of the backend files
COPY . .

# Expose Directus port
EXPOSE 8055

# Command to run
CMD ["npm", "start"]
