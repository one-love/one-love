#!/bin/sh


export BIN_DIR=`dirname $0`
export PROJECT_ROOT=`readlink -f "${BIN_DIR}/.."`
export OFFLINE="${OFFLINE:=no}"


if [ -f /usr/local/bin/cbsd ]; then
  backend_hostname=$(sudo cbsd jexec user=devel jname=oneloveback hostname)
  sudo cbsd jexec user=devel jname=oneloveback env OFFLINE=${OFFLINE} /usr/src/bin/default_user.sh
  sudo tmux new-session -s "onelove" -d "cbsd jexec user=devel jname=oneloveback env OFFLINE=${OFFLINE} /usr/src/bin/devel.sh"
  sudo tmux split-window -h -p 50 -t 0 "sudo cbsd jexec user=devel jname=onelovefront env OFFLINE=${OFFLINE} BACKEND_URL=\"http://${backend_hostname}:5000\" /usr/src/bin/devel.sh"
  sudo tmux split-window -v -p 50 -t 1 "cbsd jexec user=devel jname=oneloveback env OFFLINE=${OFFLINE} /usr/src/bin/celery_dev.sh no"
  sudo tmux a -t "onelove"
else
  backend_hostname='localhost:5000'
  "${PROJECT_ROOT}/bin/download_repos.sh"
  env OFFLINE=${OFFLINE} "${PROJECT_ROOT}/services/backend/bin/default_user.sh"
  tmux new-session -s "onelove" -d "env OFFLINE=${OFFLINE} ${PROJECT_ROOT}/services/backend/bin/devel.sh"
  tmux split-window -h -p 50 -t 0 "env OFFLINE=${OFFLINE} BACKEND_URL="http://${backend_hostname}:5000" ${PROJECT_ROOT}/services/frontend/bin/devel.sh"
  tmux a -t "onelove"
fi
