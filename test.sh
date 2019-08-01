#!/bin/bash
#
# Test the JMeter Docker image using a iovio test plan.

# Example for using User Defined Variables with JMeter

# Go to specific directory
T_DIR=tests/loadTest

# Reporting dir: start fresh
R_DIR=${T_DIR}/report
rm -rf ${R_DIR} > /dev/null 2>&1
mkdir -p ${R_DIR}

/bin/rm -f ${T_DIR}/test-plan.csv ${T_DIR}/jmeter.log  > /dev/null 2>&1

# Run docker with iovio.jmx
./run.sh -Dlog_level.jmeter=DEBUG \
	-n -t ${T_DIR}/iovio.jmx -l ${T_DIR}/test-plan.csv -j ${T_DIR}/jmeter.log \
	-e -o ${R_DIR}

echo "==== jmeter.log ===="
cat ${T_DIR}/jmeter.log

echo "==== Raw Test Report ===="
cat ${T_DIR}/test-plan.csv

echo "==== HTML Test Report ===="
echo "See HTML test report in ${R_DIR}/index.html"
