#!/bin/sh

export BIN_DIR=`dirname $0`
export PROJECT_ROOT=`readlink -f "${BIN_DIR}/.."`

if [ ! -d "${PROJECT_ROOT}/services" ]; then
  mkdir "${PROJECT_ROOT}/services"
  git clone https://github.com/one-love/backend "${PROJECT_ROOT}/services/backend"
  git clone https://github.com/one-love/frontend "${PROJECT_ROOT}/services/frontend"
fi
