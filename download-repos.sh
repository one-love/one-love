#!/bin/sh

export PROJECT_ROOT=`dirname $0`
mkdir "${PROJECT_ROOT}/projects"
git clone https://github.com/one-love/backend "${PROJECT_ROOT}/services/backend"
git clone https://github.com/one-love/frontend "${PROJECT_ROOT}/services/frontend"
