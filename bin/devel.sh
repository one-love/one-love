#!/bin/sh


export BIN_DIR=`dirname $0`
export PROJECT_ROOT=`readlink -f "${BIN_DIR}/.."`


if [ -f /usr/local/bin/cbsd ]; then
  sudo cbsd jexec user=devel jname=oneloveback /usr/src/bin/default_user.sh
  sudo tmux new-session -s "tilda" -d "cbsd jexec user=devel jname=oneloveback /usr/src/bin/devel.sh"
  sudo tmux split-window -h -p 50 -t 0 "cbsd jexec user=devel jname=onelovefront /usr/src/bin/devel.sh"
  sudo tmux split-window -v -p 50 -t 1 "cbsd jexec user=devel jname=oneloveback /usr/src/bin/celery_dev.sh"
  sudo tmux a
else
  "${PROJECT_ROOT}/services/backend/bin/download-repos.sh"
  "${PROJECT_ROOT}/services/backend/bin/devel.sh"
  tmux new-session -s "tilda" -d "${PROJECT_ROOT}/services/backend/bin/devel.sh"
  tmux split-window -h -p 50 -t 0 "${PROJECT_ROOT}/services/frontend/bin/devel.sh"
  tmux split-window -v -p 50 -t 1 "${PROJECT_ROOT}/services/backend/bin/celery_dev.sh"
  tmux a
fi
