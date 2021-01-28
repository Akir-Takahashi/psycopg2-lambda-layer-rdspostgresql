#!/bin/bash -x

set -e

rm -rf layer
docker build -t psycopg2-lambda-layer-rdspostgresql .
CONTAINER=$(docker run -d psycopg2-lambda-layer-rdspostgresql false)
docker cp $CONTAINER:/opt layer
docker rm $CONTAINER
touch layer/.slsignore
cat > layer/.slsignore << EOF
**/*.a
**/*.la
share/**
include/**
bin/**
EOF
