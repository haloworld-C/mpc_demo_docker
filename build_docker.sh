#!/bin/bash
#TODO add clear none container and images
ImageName=guangaltman/mpc_demo:latest

# remove existing image before building
docker rmi $ImageName

docker image build --network=host -f $1 -t $ImageName .

