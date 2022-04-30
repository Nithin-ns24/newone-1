FROM ubuntu:20.04

LABEL maintainer='nithin246'

ENV TZ=Asia/Kolkata \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install tzdata

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install -y git

WORKDIR /home/ubuntu/Docker

RUN git clone https://github.com/Nithin-optit/newone-1/blob/master/yml%20ansible%20playbook.yml

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y maven \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 8085



