FROM ubuntu:20.04
ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
## manual pages and Bash command completion
WORKDIR /home/osboxes/
RUN apt-get clean && apt-get -y update && apt-get install -y git
RUN apt-get -y update && apt-get install -y \
    net-tools\
    iputils-ping\
    nano\
    vim\
    g++ make cmake\
    libgmp-dev libssl-dev \
    libboost-all-dev \
    libboost-system1.67.0 \
    python \
    python3-pip \
    gdb \
    wget\
    time
RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y \
  massif-visualizer \
  && apt autoremove -y \
  && rm -rf /var/lib/apt/lists/*
RUN yes | unminimize time
RUN wget -P ~ https://git.io/.gdbinit
RUN pip install pygments
RUN pip install paramiko
RUN pip install scp
RUN pip install configparser
RUN pip install pandas
