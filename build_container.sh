#!/bin/bash

image_name="skosmos/apache-php:v0.2"
container_name="skosmos_v0.2"

# remove old container
echo "removing old container ..."
sudo docker stop $container_name
sudo docker rm $container_name
sudo docker rmi $image_name

# build container
echo
echo "building container ..."
sudo docker build -t $image_name . # (in folder met dockerfile)
sudo docker run -it -d --name=$container_name $image_name
sudo docker exec -it $container_name bash
