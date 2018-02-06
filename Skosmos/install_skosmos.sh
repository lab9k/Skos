mv /skosmos /var/www/html/
> /etc/apache2/sites-enabled/000-default.conf
# configure apache server
wget https://raw.githubusercontent.com/lab9k/Skos/develop/Needed_files/Configure_apache
cat Configure_apache >> /etc/apache2/sites-enabled/000-default.conf
rm Configure_apache
# required
a2enmod rewrite
service apache2 restart
cd /var/www/html/skosmos
# need to be done in skosmos because of composer.json
curl -sS https://getcomposer.org/installer | php
php composer.phar install --no-dev
# make backup of config/voc file
cp config.inc.dist config.inc
cp vocabularies.ttl.dist vocabularies.ttl
# change config file (change file on github to alter skosmos)
wget https://raw.githubusercontent.com/lab9k/Skos/develop/Needed_files/Config
> config.inc
cat Config >> config.inc
rm Config
# locale settings for Deutsch and English change to Nederlands when transifex is complete
locale-gen en_GB.utf8
locale-gen de_DE.utf8
# change voc file
wget https://raw.githubusercontent.com/lab9k/Skos/develop/Needed_files/Vocabularies
> vocabularies.ttl
cat Vocabularies >> vocabularies.ttl
rm Vocabularies
