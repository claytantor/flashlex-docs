#!/bin/bash

cp src/docs/swagger/dev-backend-flashlex-dev-swagger.yaml
aws s3 sync $(pwd)/build/site/. s3://docs.flashlex.com --acl public-read --cache-control "public, max-age=86400" --exclude "*.git/*"
