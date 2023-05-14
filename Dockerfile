FROM ubuntu:latest

# Update package lists and install wget
RUN apt-get update && apt-get install -y wget && apt-get install -y sudo && apt-get install -y systemd

# Create a directory for the script
RUN mkdir /app
WORKDIR /app

# Copy the install script to the container
COPY install.sh spotifyd.conf spotifyd.service .

# Make the script executable
RUN chmod +x install.sh

# Run the script when the container starts
CMD ["sh", "./install.sh"]
