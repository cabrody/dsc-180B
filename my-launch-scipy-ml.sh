#!/bin/sh

set -a  # mark all variables below as exported (environment) variables

# Indentify this script as source of job configuration
K8S_CONFIG_SOURCE=${BASH_SOURCE[0]}

K8S_NUM_GPU=0  # max of 2 (contact ETS to raise limit)
K8S_NUM_CPU=2  # max of 8 ("")
K8S_GB_MEM=8  # max of 64 ("")

# Controls whether an interactive Bash shell is started
SPAWN_INTERACTIVE_SHELL=YES

# Sets up proxy URL for Jupyter notebook inside 
PROXY_ENABLED=YES
#K8S_ENTRYPOINT="/bin/sleep"
#K8S_ENTRYPOINT_ARGS_EXPANDED='"8640000"'

K8S_DOCKER_IMAGE="crbrody/autophrase-notebook"
K8S_ENTRYPOINT="/home/crbrody/make-autophrase.sh"

exec /software/common64/dsmlp/bin/launch.sh "$@"

