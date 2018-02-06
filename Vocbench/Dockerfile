# Docker file for Vocbench

# setup apache server
FROM ubuntu:16.04

# used in installer
ADD install_vocbench.sh home/install_vocbench.sh
RUN chmod u+x home/install_vocbench.sh

# install all needed packages
RUN apt-get update
RUN apt-get install -y openjdk-8-jre
RUN apt-get install -y apache2 
RUN apt-get install -y libapache2-mod-php7.0
RUN apt-get install -y unzip
RUN apt-get install -y nano
RUN apt-get install -y wget
RUN apt-get install -y git

# used by vocbench
#RUN apt-get install -y dos2unix

# install vocbench
# RUN home/install_vocbench.sh
