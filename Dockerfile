FROM ubuntu:latest

# Update package lists and install wget
RUN apt-get update && apt-get install -y wget && apt-get install -y sudo && apt-get install -y systemd && apt-get install -y git && apt-get install -y make

# Create a directory for the script
RUN mkdir /app
WORKDIR /app
