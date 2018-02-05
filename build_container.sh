#!/bin/bash

# Shell scrip to automatically build the docker container for 
# the https://github.com/lab9k/Skos repository. The container
# contains a ubuntu 16.04 server with Skosmos and an example
# vocabulary.
#
# WARNING: BE SURE TO RUN THIS SCRIPT IN THE FOLDER WITH THE
# SUPPLIED DOCKERFILE!

image_name="first-image-test"
container_name="skosmos_v0.2"

# remove old container
echo "removing..."
sudo docker stop $container_name
sudo docker rm $container_name

# remove old image
sudo docker rmi $image_name
echo "DONE"

echo

echo "building..."
# build image
sudo docker build -t $image_name .

# build container
sudo docker run -itd --network=host --name=$container_name $image_name

# attach to container with bash
sudo docker exec -it $container_name bash
