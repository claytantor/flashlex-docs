#!/bin/bash

GIT_BRANCH=$(git branch | grep \* | cut -d ' ' -f2)
VERSION=1.2.dev
if [ $GIT_BRANCH == "master" ]
then
    VERSION=1.2
fi
echo $VERSION

