#!/bin/bash
if [ -z "$1" ] then
  echo "No argument supplied - Watching all debug"
  tail -f /tmp/debug.log
else
  echo "Debug: Watching \"$1\""
  tail -f /tmp/debug.log | grep $1
fi
