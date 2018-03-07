#!/bin/bash

if [ $1 ]
then
    containerName=$1
else
    containerName="db"
fi

if [ $2 ]
then
    saPassword=$2
else
    saPassword="DoNotTrustMe!"
fi

#change the container name to whatever name:tag you built with
docker run --rm -d --name $containerName -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=$saPassword' -p 1433:1433 oskaremil/defaultdb:latest