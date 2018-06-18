FROM ubuntu

RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -my wget gnupg
RUN apt-get install -y software-properties-common
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
RUN apt-get update
RUN apt-get install -y docker-engine
RUN usermod -aG docker $(whoami)

CMD bash