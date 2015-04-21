#!/bin/bash

function wifi-restart() {
  sudo ifconfig $1 down;
  sleep 1;
  sudo ifconfig $1 up;
  sleep 3
  ping -c5 google.com
}

function wifi-scan() {
  /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport scan;
}
