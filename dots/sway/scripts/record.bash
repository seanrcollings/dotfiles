#!/bin/bash

pid=`pgrep wf-recorder`
status=$?

if [ $status != 0 ]
then
  /home/sean/.asdf/shims/appfi run record --mode standalone
else
  pkill --signal SIGINT wf-recorder
fi;
