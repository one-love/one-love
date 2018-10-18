#!/bin/sh


export BIN_DIR=`dirname $0`
export PROJECT_ROOT=`readlink -f "${BIN_DIR}/.."`


if [ -f /usr/local/bin/cbsd ]; then
  sudo cbsd jexec user=devel jname=pulsarback /usr/src/bin/collect.sh
  sudo cbsd jexec user=devel jname=pulsarfront /usr/src/bin/collect.sh
else
  ${PROJECT_ROOT}/services/backend/bin/collect.sh
  ${PROJECT_ROOT}/services/frontend/bin/collect.sh
fi

rm -rf  "${PROJECT_ROOT}/build/*"
mkdir "${PROJECT_ROOT}/build/static"
rsync -rv --delete --progress "${PROJECT_ROOT}/services/backend/pulsar/static/" "${PROJECT_ROOT}/build/static/"
cp -r ${PROJECT_ROOT}/services/frontend/build/* "${PROJECT_ROOT}/build/"
