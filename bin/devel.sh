#!/bin/sh

sudo tmux new-session -s "tilda" -d "cbsd jexec user=devel jname=backend /usr/src/bin/devel.sh"
sudo tmux splitw -h -p 50 -t 0 "cbsd jexec user=devel jname=frontend /usr/src/bin/devel.sh"
sudo tmux a
