#!/bin/bash

echo $(git describe --exact-match --tags $(git log -n1 --pretty='%h'))

