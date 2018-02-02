sudo docker build -t skosmos/apache-php:v0.2 . # (in folder met dockerfile)
sudo docker run -it -d --name="skosmos_v0.2d" skosmos/apache-php:v0.2d
sudo docker exec -it skosmos_v0.2d bash

