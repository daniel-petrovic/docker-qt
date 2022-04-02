FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN \
   set -eux && \
   apt-get update && \
   apt-get -y upgrade && \
   apt-get -y install \
       aptitude bash build-essential ccache cmake g++ \
       mesa-common-dev libfontconfig1 libglu1-mesa-dev libegl1-mesa libgl1-mesa-dev \
       qt5-default qt5-qmake qt5-qmake-bin qml qml-module-qtquick* qml-module-qtquick2* \
       qt5-qmltooling-plugins qmlscene \
       qtcreator \
       vim

RUN \
    set -eux && \
    groupadd -g 1000 myuser && \
    useradd --system --no-log-init --create-home --home-dir /home/myuser --gid myuser --groups sudo --uid 1000 --shell /bin/bash myuser && \
    echo 'root:root' | chpasswd && \
    echo 'myuser:myuser' | chpasswd
