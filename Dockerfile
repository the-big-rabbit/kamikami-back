FROM node:20-alpine

WORKDIR /app

# Install system dependencies if needed (e.g. for sharp image processing)
# RUN apk add --no-cache \
#     python3 \
#     make \
#     g++

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci --omit=dev

# Copy the rest of the application
COPY . .

# Expose Directus port
EXPOSE 8055

# Command to run
CMD ["npm", "start"]
