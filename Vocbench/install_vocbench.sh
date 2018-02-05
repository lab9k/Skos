cd /home
wget https://bitbucket.org/art-uniroma2/vocbench3/downloads/vocbench3_standalone-2.0.zip
unzip vocbench3_standalone-2.0.zip
cd semanticturkey-2.0/bin/
chmod +x *
apt-get install -y dos2unix
dos2unix *
./st_server_run
