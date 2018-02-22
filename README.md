# SKOS
Simple Knowledge Organization System

## Deployment
If you want to know more about how openshift works read [this](https://github.com/lab9k/Orga/blob/master/Application%20deployment%20Openshift/How_to_use_Openshift.md)
 HOW TO manual. 

Deploy Skosmos on openshift: 

```
oc new-app registry.access.redhat.com/rhscl/php-70-rhel7~https://github.com/lab9k/Skos.git --context-dir=Skosmosv2 --name=skosmos
```

Deploy Sparql on openshift:

```
oc new-app registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift~https://github.com/lab9k/Skos.git --context-dir=Sparql --name=sparql
```

Deploy Vocbench on apache:

```
to do: commands to deploy vocbench on digitalocean server 
```

## [Skosmos](http://skosmos.org/)
Handleiding voor de installie vindt u [hier](https://github.com/NatLibFi/Skosmos/wiki/Installation) in de wiki van de github repository van de National Library of Finland.


