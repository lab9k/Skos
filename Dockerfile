# Docker file for Skosmos

# setup apache server
FROM ubuntu:16.04



RUN apt-get update
RUN apt-get install -y openjdk-8-jre
RUN apt-get install -y nano
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y ruby
RUN apt-get install -y apache2 
RUN apt-get install -y libapache2-mod-php7.0
RUN apt-get install -y php-xml
RUN apt-get install -y php-mbstring
RUN apt-get install -y locales


# TODO apt install php apache

# install git and clone skosmos
RUN apt-get install -y git
RUN git clone -b v1.10-maintenance https://github.com/NatLibFi/Skosmos.git skosmos
