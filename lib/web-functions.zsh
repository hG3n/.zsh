#!/bin/bash

# function to shorten arp-scan command
function nwscan() {
  arp-scan --interface=$1 --localnet
}

# small function for opening webpages from the commandline
function wopen() {
  open http://$1
}

# function for opening google searches via terminal
function g() {
  url=$(python ./pythonscripts/create-google-query.py $@)
  open $url
}
