#!/bin/bash

GIT_BRANCH=$(git branch | grep \* | cut -d ' ' -f2)
SWAGGERFILE=dev-flashlex-backend-swagger.yaml
if [ $GIT_BRANCH == "master" ]
then
    SWAGGERFILE=flashlex-backend-swagger.yaml
fi
echo $SWAGGERFILE


