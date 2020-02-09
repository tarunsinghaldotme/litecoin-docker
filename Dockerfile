From ubuntu:16.04

LABEL maintainer "Tarun Singhal <hello@tarunsinghal.me>"
MAINTAINER Tarun Singhal <Tarun Singhal>


RUN apt-get update -y && \
    apt-get install wget -y && \
    apt-get install curl -y
    
ADD https://download.litecoin.org/litecoin-0.16.3/linux/litecoin-0.16.3-x86_64-linux-gnu.tar.gz /opt/

WORKDIR /opt
RUN tar -zxf litecoin-0.16.3-x86_64-linux-gnu.tar.gz 
RUN install -m 0755 -o root -g root -t /usr/local/bin litecoin-0.16.3/bin/*
#COPY ./litecoin.conf /root/.litecoin/litecoin.conf

CMD ["/usr/local/bin/litecoind"]
