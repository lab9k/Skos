# Docker file for Skosmos

# setup apache server
FROM phusion/baseimage:0.10.0

MAINTAINER LAB9K <info@lab9k.gent>

# install all needed packages
RUN apt-get update
RUN apt-get install -y openjdk-8-jre
RUN apt-get install -y curl
RUN apt-get install -y unzip
RUN apt-get install -y wget
RUN apt-get install -y apache2
RUN apt-get install -y libapache2-mod-php7.0
RUN apt-get install -y php-xml
RUN apt-get install -y php-mbstring
RUN apt-get install -y php7.0-curl
RUN apt-get install -y locales
RUN apt-get install -y git

# include skosmos on image
RUN git clone -b v1.10-maintenance https://github.com/NatLibFi/Skosmos.git skosmos


# used to complete build
ADD install_skosmos.sh home/install_skosmos.sh
RUN chmod u+x home/install_skosmos.sh
RUN mkdir /etc/service/apache
ADD apache.sh /etc/service/apache/run
RUN chmod +x /etc/service/apache/run

# install skosmos
RUN home/install_skosmos.sh
