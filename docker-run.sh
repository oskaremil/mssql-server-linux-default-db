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

#
# Change the container name to whatever name:tag you built with
#
# Depending on the speed of your system you might need to adjust
# TIMEOUT to allow the SQL server to spin up before executing 
# the CREATE database statement.
#
docker run --rm -d --name $containerName -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=$saPassword" -e "TIMEOUT=10" -p 1433:1433 oskaremil/defaultdb:latest