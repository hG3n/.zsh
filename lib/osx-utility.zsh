#!/bin/bash <nl>

function add_dock_space() {

  defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

}
