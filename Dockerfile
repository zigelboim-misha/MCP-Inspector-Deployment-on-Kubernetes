# Use official Node.js runtime as base image
FROM node:22-alpine

# Set working directory in container
WORKDIR /app

# Set environment variables for custom ports and host binding
ENV CLIENT_PORT=8080
ENV SERVER_PORT=9000
ENV HOST=127.0.0.1

# Expose the custom ports
EXPOSE 8080 9000

# Default command to run MCP Inspector
CMD ["npx", "@modelcontextprotocol/inspector"]