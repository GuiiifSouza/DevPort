# Stage 1: Build
FROM node:18-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy only the necessary files to install dependencies
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the project
RUN npm run build

# Stage 2: Production
FROM node:18-alpine AS production

# Set the working directory inside the container
WORKDIR /app

# Copy only the necessary files for production
COPY --from=builder /app/package*.json ./

# Install only production dependencies
RUN npm install --only=production

# Copy the built files from the build stage
COPY --from=builder /app/dist ./dist

# Set the environment variable NODE_ENV to production
ENV NODE_ENV=production

# Expose the port on which the application will run
EXPOSE 3000

# Command to start the application
CMD ["node", "dist/main"]

