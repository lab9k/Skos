# Docker file for Skosmos

# setup apache server
FROM php:7.1-apache

RUN apt-get update

# install git and clone skosmos
RUN apt-get install git
RUN cd /var/www/html && git clone https://github.com/NatLibFi/Skosmos.git skosmos
