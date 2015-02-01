#!/bin/bash

# just a short little helper for using the megacmd tool
# saves time by lesser typing amount
# functions for the respectiv parameters can be read at:
# https://github.com/t3rm1n4l/megacmd
# these are just the main features I am using so not every
# single command of megacmd is covered by this script

function mega() {
  if [ $1 = "put" ]; then
    megacmd $1 $2 mega:/$3
  elif [ $1 = "get" ]; then
    megacmd $1 mega:/$2
  elif [ $1 = "list" ]; then
    megacmd $1 mega:/
  elif [ $1 = "sync" ]; then
    megacmd $1 mega:/$2 $3
  elif [ $1 = "delete" ]; then
    megacmd $1 mega:/$2
  else
    echo "you selected the wrong option"
  fi
}

