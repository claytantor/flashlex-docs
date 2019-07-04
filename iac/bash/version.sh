#!/bin/bash

GIT_BRANCH=$(git branch | grep \* | cut -d ' ' -f2)
VERSION=1.3.dev
if [ $GIT_BRANCH == "master" ]
then
    VERSION=1.3
fi
echo $VERSION

