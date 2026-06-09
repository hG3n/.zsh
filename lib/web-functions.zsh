#!/bin/bash

# function to shorten arp-scan command
function nwscan() {
  arp-scan --interface=$1 --localnet
}

# small function for opening webpages from the commandline
function wopen() {
  open http://$1
}

