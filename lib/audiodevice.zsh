function aod() {
  if [ -z "$1" ]; then
    SwitchAudioSource -s SAMSUNG
    return 0;
  fi

  if [ $1 = 'hs' ]; then
    SwitchAudioSource -s PRO
  elif [$1 = 'tv']; then
    SwitchAudioSource -s SAMSUNG
  elif [$1 = 'pp']; then
    SwitchAudioSource -s proPods
  fi
}
