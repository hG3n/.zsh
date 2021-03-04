function cdr() {
  # https://github.com/univ-of-utah-marriott-library-apple/display_manager
  # Thank you for this <3

  if [ -z "$1" ]; then
    ~/.zsh/lib/display_manager/display_manager.py res 3840 2160 60 only-hidpi main
    return 0;
  fi

  if [ $1 = '1' ]; then
~/.zsh/lib/display_manager/display_manager.py res 1920 1080 60 only-hidpi main
  elif [ $1 = '2' ]; then
~/.zsh/lib/display_manager/display_manager.py res 2560 1440 60 only-hidpi main
  elif [ $1 = '3' ]; then
~/.zsh/lib/display_manager/display_manager.py res 3200 1800 60 only-hidpi main
  elif [ $1 = '4' ]; then
~/.zsh/lib/display_manager/display_manager.py res 3360 1890 60 only-hidpi main
  elif [ $1 = '5' ]; then
~/.zsh/lib/display_manager/display_manager.py res 3840 2160 60 only-hidpi main
  fi
}

