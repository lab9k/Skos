cd
wget https://archive.apache.org/dist/jena/binaries/apache-jena-fuseki-3.6.0.tar.gz
cd /opt
tar xzf ~/apache-jena-fuseki-3.6.0.tar.gz
rm ~/apache-jena-fuseki-3.6.0.tar.gz
ln -s apache-jena-fuseki-3.6.0 fuseki
cd /opt/fuseki
adduser --system --home /opt/fuseki --no-create-home fuseki
cd /var/lib
mkdir -p fuseki/{backups,databases,system,system_files}
chown -R fuseki fuseki
cd /var/log
mkdir fuseki
chown fuseki fuseki
cd /etc
mkdir fuseki
chown fuseki fuseki
cd /etc/fuseki
ln -s /var/lib/fuseki/* .
ln -s /var/log/fuseki logs
cd ../default
touch fuseki
echo 'export FUSEKI_HOME=/opt/fuseki' >> fuseki
echo 'export FUSEKI_BASE=/etc/fuseki' >> fuseki
echo 'FUSEKI_USER=fuseki' >> fuseki
echo 'JAVA_OPTIONS="-Xmx2048M"' >> fuseki
cd /etc/init.d
ln -s /opt/fuseki/fuseki .
update-rc.d fuseki defaults
service fuseki start
curl --data "dbName=skosmos&dbType=tdb" http://localhost:3030/$/datasets/
service fuseki stop
> /etc/fuseki/configuration/skosmos.ttl 
wget https://raw.githubusercontent.com/lab9k/Skos/develop/Needed_files/skosmos.ttl
cat skosmos.ttl >> /etc/fuseki/configuration/skosmos.ttl
rm skosmos.ttl
service fuseki start
cd 
wget http://skos.um.es/unescothes/unescothes.ttl
/opt/fuseki/bin/s-put http://localhost:3030/skosmos/data default unescothes.ttl
mv /skosmos /var/www/html/
cd
> /etc/apache2/sites-enabled/000-default.conf
wget https://raw.githubusercontent.com/lab9k/Skos/develop/Needed_files/Configure_apache
cat Configure_apache >> /etc/apache2/sites-enabled/000-default.conf
rm Configure_apache
cd /var/www/html/skosmos
curl -sS https://getcomposer.org/installer | php
php composer.phar install --no-dev
cp config.inc.dist config.inc
cp vocabularies.ttl.dist vocabularies.ttl
wget https://raw.githubusercontent.com/lab9k/Skos/develop/Needed_files/Config
> config.inc
cat Config >> config.inc
rm Config
locale-gen en_GB.utf8
locale-gen de_DE.utf8
wget https://raw.githubusercontent.com/lab9k/Skos/develop/Needed_files/Vocabularies
> vocabularies.ttl
cat Vocabularies >> vocabularies.ttl
rm Vocabularies 
service apache2 start
