#!/bin/sh

NODE_TAGS=(15-alpine 15-buster)
TRUFFLE_VERSIONS=(5.1.62)

for nodeTag in "${NODE_TAGS[@]}"
do
   : 
   for truffleVersion in "${TRUFFLE_VERSIONS[@]}"
   do
     :
     TAG="cryptoganges/truffle:$nodeTag-$truffleVersion"
     echo "Building docker image tag $TAG for node $nodeTag and truffle $truffleVersion"
     DOCKER_BUILD_COMMAND="docker build --build-arg NODE_BASE_IMAGE=node:$nodeTag --build-arg TRUFFLE_VERSION=$truffleVersion --no-cache --rm -t $TAG ."
     echo $DOCKER_BUILD_COMMAND
     $DOCKER_BUILD_COMMAND
   done  
done

#wget -q https://registry.hub.docker.com/v1/repositories/node/tags -O -  | sed -e 's/[][]//g' -e 's/"//g' -e 's/ //g' | tr '}' '\n'  | awk -F: '{print $3}'