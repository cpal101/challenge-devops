FROM ubuntu:16.04

RUN apt-get -qq -y update && \
    apt-get -qq -y install openjdk-8-jdk ant curl && \
    rm -rf /var/cache/apt /var/lib/apt/lists/*

# Your deployment script here
RUN mkdir /var/app
COPY . /var/app
RUN cd /var/app && ant
