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

FROM base AS prime
RUN useradd -m javi && echo "javi:javi" | chpasswd && adduser javi sudo
USER javi
COPY . .
WORKDIR /home/javi/setup

#FROM prime
#COPY . .
#CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]

