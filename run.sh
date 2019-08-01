#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
IMAGE="justb4/jmeter:5.1.1"

# Finally run
/usr/local/bin/docker stop ${NAME} > /dev/null 2>&1
/usr/local/bin/docker rm ${NAME} > /dev/null 2>&1
/usr/local/bin/docker run --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@
