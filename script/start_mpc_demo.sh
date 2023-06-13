#!/bin/bash
VERSION="0.01"
ContainerName=mpc_demo
ImageName=guangaltman/mpc_demo:latest
User=dev

#kill and rm exsit container
docker stop $ContainerName > /dev/null 2>&1
docker rm -f $ContainerName > /dev/null 2>&1

docker run -itd \
    --rm \
    -e DISPLAY=unix$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    --name $ContainerName \
    --hostname $User \
    --net=host \
    --privileged \
    -v /etc/localtime:/etc/localtime \
    -v $(pwd)/mpc_demo:/home/$User/catkin_ws \
    $ImageName \
#    /bin/bash
    
# -e NVIDIA_DRIVER_CAPABILITIES=all \
# --gpus all\
# -w /home/ubuntu/catkin_ws \
