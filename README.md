# mpc_demo_docker
a docker for a mpc repo: https://github.com/Geonhee-LEE/mpc_ros/
### docker pull 
```
docker pull guangaltman/mpc_demo:latest
```
### How to use
The only thing to do is mount the code under directory /home/dev/catkin_ws/src in docker.
The directory structure need to be like this:
```
----catkin_ws
    |----src
          |----mpc_ros
          |----servingbot
```
