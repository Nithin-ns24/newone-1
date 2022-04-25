FROM ubuntu:20.04

LABEL maintainer='nithin246'

ENV TZ=Asia/Kolkata \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install tzdata

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install -y git
RUN apt-get install unzip -y

WORKDIR /home/ubuntu/Docker

RUN wget https://github.com/Nithin-optit/newone-1/archive/refs/heads/master.zip

RUN unzip master.zip

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y maven \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 8085



