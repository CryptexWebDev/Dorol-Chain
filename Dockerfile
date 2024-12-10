# Use a base image with Linux
FROM ubuntu:latest

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    curl \
    tar \
    git \
    build-essential

# Install Go 1.22.4
RUN curl -LO https://golang.org/dl/go1.22.4.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.22.4.linux-amd64.tar.gz && \
    rm go1.22.4.linux-amd64.tar.gz

# Set environment variables for Go
ENV PATH="/usr/local/go/bin:${PATH}"

# Copy the project into the container
WORKDIR /app
COPY . .

# Run the build script
RUN chmod +x build.sh && ./build.sh

# Command to copy files and exit
CMD ["cp", "-r", "/app/dist", "/output"]