#!/bin/bash

PROJECTS_ROOT=$(readlink -f "$(dirname $0)/../projects")
BACKEND_ROOT=$(readlink -f "${PROJECTS_ROOT}/backend")
FRONTEND_ROOT=$(readlink -f "${PROJECTS_ROOT}/frontend")

tmux new-session -s "onelove" -d "${BACKEND_ROOT}/bin/dev.sh"
tmux splitw -h -p 50 -t 0 -c "${FRONTEND_ROOT}" "${FRONTEND_ROOT}/bin/dev.sh"
tmux splitw -v -p 50 -t 0 -c "${BACKEND_ROOT}" "${BACKEND_ROOT}/bin/celery_dev.sh"
tmux a
