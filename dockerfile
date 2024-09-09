FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y debconf-utils
RUN echo "tzdata tzdata/Areas select Europe" | debconf-set-selections
RUN echo "tzdata tzdata/Zones/Europe select Madrid" | debconf-set-selections
RUN apt-get install -y tzdata
RUN apt-get install -y sudo build-essential gnuplot-nox cmake
RUN useradd -ms /bin/bash alu
RUN echo 'alu:alu' | chpasswd
RUN echo 'alu ALL=(ALL:ALL) NOPASSWD: /usr/bin/apt' >> /etc/sudoers
WORKDIR /usr/src/EPS
RUN chown -R alu:alu .
USER alu
CMD ["tail","-f","/dev/null"]