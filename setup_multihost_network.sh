#https://docs.docker.com/engine/userguide/networking/overlay-standalone-swarm/
#Sets up an overlay network for an application of which the containers are on different hosts
#make sure docker & docker machine & virtual box are installed

#**SETUP KEY-VALUE STORE**
echo "setting up key-value store using Consul"
sudo docker-machine create -d virtualbox mh-keystore
eval "$(docker-machine env mh-keystore)"
sudo docker run -d \
  --name consul \
  -p "8500:8500" \
  -h "consul" \
  consul agent -server -bootstrap -client "0.0.0.0"
#show consul container
sudo docker ps

#**CREATE SWARM CLUSTER**
echo "creating swarm cluster"
#create swarm manager
sudo docker-machine create \
-d virtualbox \
--swarm --swarm-master \
--swarm-discovery="consul://$(docker-machine ip mh-keystore):8500" \
--engine-opt="cluster-store=consul://$(docker-machine ip mh-keystore):8500" \
--engine-opt="cluster-advertise=eth1:2376" \
mhs-demo0 #rename to appropriate container name
#create and add another host to swarm
#sudo docker-machine create -d virtualbox \
#  --swarm \
#  --swarm-discovery="consul://$(docker-machine ip mh-keystore):8500" \
#  --engine-opt="cluster-store=consul://$(docker-machine ip mh-keystore):8500" \
#  --engine-opt="cluster-advertise=eth1:2376" \
#  mhs-demo1
#show all added hosts
sudo docker-machine ls

#**CREATE THE OVERLAY NETWORK**
echo "creating overlay network"
eval $(docker-machine env --swarm mhs-demo0)
sudo docker info
sudo docker network create --driver overlay --subnet=10.0.9.0/24 my-net
sudo docker network ls
#show networks for the other swarm agent to ensure it is connected to the multihost network
#eval $(docker-machine env mhs-demo1)
#sudo docker network ls

#**RUN APPLICATION**
echo "starting up containers on the network"
eval $(docker-machine env --swarm mhs-demo0)
#Start an Nginx web server on the mhs-demo0 instance.
sudo docker run -itd \
  --name=web \
  --network=my-net \
  --env="constraint:node==mhs-demo0" \
  nginx:alpine
#Run a busybox instance on the mhs-demo1 instance and get the contents of the Nginx server’s home page.
#sudo docker run -it --rm \
#  --network=my-net \
#  --env="constraint:node==mhs-demo1" \
#  busybox wget -O- http://web




