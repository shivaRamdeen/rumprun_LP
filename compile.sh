#!/bin/bash

#path to rumprun tools
export PATH:$PATH:/lp/rumprun/rumprun/bin

#cross compile
x86_64-rumprun-netbsd-gcc -O $NAME-rumprun $NAME.c

#bake
rumprun-bake hw_virtio $NAME-rumprun.bin $NAME-rumprun
