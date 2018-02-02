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
echo -e 'export FUSEKI_HOME=/opt/fuseki\nexport FUSEKI_BASE=/etc/fuseki\n\nFUSEKI_USER=fuseki\nJAVA_OPTIONS="-Xmx2048M"' >> fuseki
cd /etc/init.d
ln -s /opt/fuseki/fuseki .
update-rc.d fuseki defaults
