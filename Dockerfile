# Use official Bun runtime
FROM oven/bun:1

WORKDIR /app

# Copy everything to the container
COPY . .

# Install dependencies and build the app
RUN bun install
RUN bun run build

# Expose the port the app runs on
EXPOSE 3000

# Start the server
CMD ["bun", "start"]
