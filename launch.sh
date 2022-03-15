#!/bin/sh
# Buildez une image avec le port par défaut et une autre avec un port défini et démarrez un conteneur pour chaque image

docker build . -t test_3006:1.0.0 --build-arg DEFAULT_PORT=3006
docker run --rm -d -p 9006:3006 --name test_port_3006 test_3006:1.0.0

docker build . -t test_3007:1.0.0 --build-arg DEFAULT_PORT=3007
docker run --rm -d -p 9007:3007 --name test_port_3007 test_3007:1.0.0

sleep 1
echo "testing"

curl localhost:9006
curl localhost:9007

echo "cleaning containers"
docker container stop test_port_3006 test_port_3007
