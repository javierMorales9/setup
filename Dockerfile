FROM ubuntu:latest AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get -y install sudo && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes
RUN useradd -m javi && echo "javi:javi" | chpasswd && adduser javi sudo
USER javi
WORKDIR /home/javi/setup
COPY . .
RUN ./ansible-run.sh

