# Download base image ubuntu 22.04
FROM ubuntu:22.04

# LABEL about the custom image
LABEL version="1.0"
LABEL maintainer="Tien Nguyen <tiennguyen047@gmail.com>"
LABEL description="This is a custom Docker Image for NCD project"

# Update Ubuntu Software repository
RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y python3.11

WORKDIR /usr/local/share

EXPOSE 80 443