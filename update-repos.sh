#!/bin/sh

PROJECT_ROOT=`dirname $0`
SERVICES_ROOT="${PROJECT_ROOT}/services"

git pull
cd "${SERVICES_ROOT}"
ls -1 | while read service; do
  echo "${service}"
  cd "${service}"
  git pull
  cd -
done
