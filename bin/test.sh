#!/bin/sh


export BIN_DIR=`dirname $0`
export PROJECT_ROOT=`readlink -f "${BIN_DIR}/.."`


cd ${PROJECT_ROOT}/services/backend
bin/test.sh
cd ${PROJECT_ROOT}/services/frontend
bin/test.sh
