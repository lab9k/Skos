# SKOS
Simple Knowledge Organization System

## Deployment
Deploy Skosmos on openshift: 

```
oc new-app registry.access.redhat.com/rhscl/php-70-rhel7~https://github.com/lab9k/Skos.git --context-dir=Skosmosv2 --name=skosmos
```

Deploy Sparql on openshift:

```
oc new-app registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift~https://github.com/lab9k/Skos.git --context-dir=Sparql --name=sparql
```

Deploy Vocbench on apache2:

```
to do: commands to deploy vocbench on digitalocean server 
```

## [Skosmos](http://skosmos.org/)
Handleiding voor de installie vindt u [hier](https://github.com/NatLibFi/Skosmos/wiki/Installation) in de wiki van de github repository van de National Library of Finland.


