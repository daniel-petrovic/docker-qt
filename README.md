Docker Qt Development Environment
================================

C++ Qt Compile Environment Skeleton with GCC Toolchain and QtCreator in docker.

Feel free to update the Docker file and add the additional packages you need.


* Build  the Docker image:

        docker build --force-rm -f Dockerfile -t dane/qt:latest . 



* Starting the container by forwarding X Org Server Connection from the (Linux)Host to the Docker 

        There are 2 users: root (pwd root) and myuser (pwd myuser)
        QtCreator should be started by non-root:

        docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix --privileged --network host -e DISPLAY=$DISPLAY dane/qt:latest /bin/bash
        su myuser
        qtcreator
