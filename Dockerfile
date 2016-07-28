FROM ubuntu:trusty

MAINTAINER Shiva Ramdeen <ramdeen@us.ibm.com>

WORKDIR /lp

RUN apt-get -yqq update

RUN apt-get -yqq install git build-essential

RUN git clone https://github.com/rumpkernel/rumprun.git

RUN cd /lp/rumprun && pwd &&  git submodule update --init && ./build-rr.sh hw

COPY build.sh /solum/bin

COPY compile.sh /solum/bin

