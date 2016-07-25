#the start
FROM ubuntu:trusty

MAINTAINER Shiva Ramdeen <ramdeen@us.ibm.com>

WORKDIR /lp/

RUN apt-get -yqq update

RUN apt-get -yqq install git build-essentials

RUN git clone https://github.com/rumpkernel/rumprun.git

RUN "\${WORKDIR}\/rumprun\/build-rr.sh", "hw"

RUN export \$PATH:\${WORKDIR}\/rumprun\/rumprun\/bin



