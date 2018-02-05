cd /home
wget https://bitbucket.org/art-uniroma2/vocbench3/downloads/vocbench3_standalone-2.0.zip
unzip vocbench3_standalone-2.0.zip
cd semanticturkey-2.0/
apt-get install -y dos2unix
find . -type f -print0 | xargs -0 dos2unix
chmod u+x bin/st_server_run
bin/st_server_run 
