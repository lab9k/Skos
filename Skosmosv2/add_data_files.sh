#!/bin/bash

curl -I -u admin:admin -XPOST --data "dbName=skosmos&dbType=tdb" -G http://localhost:3030/$/datasets/
curl -I -X POST -H Content-Type:text/turtle -T ./stadGentTTL/diensten.ttl -G http://localhost:3030/skosmos/data
curl -I -X POST -H Content-Type:text/turtle -T ./stadGentTTL/doelgroepen.ttl -G http://localhost:3030/skosmos/data
curl -I -X POST -H Content-Type:text/turtle -T ./stadGentTTL/inputTypes.ttl -G http://localhost:3030/skosmos/data
curl -I -X POST -H Content-Type:text/turtle -T ./stadGentTTL/ruleTypes.ttl -G http://localhost:3030/skosmos/data
curl -I -X POST -H Content-Type:text/turtle -T ./stadGentTTL/themas.ttl -G http://localhost:3030/skosmos/data