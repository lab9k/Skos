# Vocbench
## Information Dockerfile Skosmos

What we install:
* phusion/baseimage:<version> (on 2/6/18 version is 0.10.0)
* java jre 8
* cURL
* unzip
* wget
* apache2

> All the needed file get imported or you can find them in this repo.

## How does it work

After we have downloaded and extracted the phusion/baseimage we add on several needed packages.
We add the files to the docker by ADD (and make them executable).
Now we run our installer script, which you can find in the same folder as this.
Because we use phusion/baseimage we can use `/sbin/my_init`. Therefor we let the init control the apache server.

> Note that the apache will keep running until you stop the docker.

## Running

```
git clone https://github.com/lab9k/Skos
cd Skos/Vocbench/
./build_container.sh
```

> Make sure docker is pre installed and you are not working as *root*
