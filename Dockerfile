# Docker file for Skosmos

# setup apache server
FROM ubuntu:16.04



RUN apt-get update
RUN apt-get install -y openjdk-8-jre

# TODO apt install php apache

# install git and clone skosmos
RUN apt-get install -y git
RUN git clone https://github.com/NatLibFi/Skosmos.git skosmos
