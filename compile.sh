#!/bin/bash

NAME=$1
NAME=${NAME%.*}
COMPILE_FLAGS=$2
#path to rumprun tools
export PATH=$PATH:/lp/rumprun/rumprun/bin

#cross compile
#check if application specific compile instructions are present.
#if [[ -e /app/$NAME]]; then
# Run application specific compile script
#else
#compile generic

x86_64-rumprun-netbsd-gcc -o "$NAME-rumprun" "$NAME.c" $COMPILE_FLAGS

#bake
rumprun-bake hw_virtio "$NAME-rumprun.bin" "$NAME-rumprun"

#return name of final binary
echo $NAME-rumprun.bin
