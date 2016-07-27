# rumprun_LP
A solum language pack that allows building rumprun unikernel applications

# build.sh
The build.sh script is used to install application requirements from the file "requirements.txt" that should exist in the application repository.

# compile.sh
The compile.sh script is used to compile the rumprun application and produce the final binary.
The steps include cross-compinling and baking. By default the unikernel is baked with the virtio drivers.
