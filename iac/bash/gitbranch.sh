#!/bin/bash

echo $(git branch | grep \* | cut -d ' ' -f2)

