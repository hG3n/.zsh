# --- FUNCTION PATH --- #
    fpath=($ZSH/functions $ZSH/completions $fpath)

# load all config files in ~/.zsh/lib
for config_file ($ZSH/lib/*.zsh); do
  source $config_file
done

is_plugin() {
  local base_dir=$1
  local name=$2
  test -f $base_dir/plugins/$name/$name.plugin.zsh \
    || test -f $base_dir/plugins/$name/_$name
}

# adds all defind plugins to fpath before running compinit
for plugin ($plugins); do
  if is_plugin $ZSH_CUSTOM $plugin; then
    fpath=($ZSH_CUSTOM/plugins/$plugin $fpath)
  elif is_plugin $ZSH $plugin; then
    fpath=($ZSH/plugins/$plugin $fpath)
  fi
done

# Load and run compinit
autoload -U compinit
compinit -i

#-----------------------#
# --- PLUGIN LOADER --- #
#-----------------------#
for plugin ($plugins); do
  if [ -f $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
  elif [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/plugins/$plugin/$plugin.plugin.zsh
  fi
done

#----------------------#
# --- THEME LOADER --- #
#----------------------#
if [ "$ZSH_THEME" = "random" ]
then
  themes=($ZSH/theme/*zsh-theme)
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  RANDOM_THEME=${themes[$N]}
  source "$RANDOM_THEME"
  echo "[oh-my-zsh] Random theme '$RANDOM_THEME' loaded..."
else
  if [ ! "$ZSH_THEME" = ""  ]
  then
    if [ -f "$ZSH_CUSTOM/$ZSH_THEME.zsh-theme" ]
    then
      source "$ZSH_CUSTOM/$ZSH_THEME.zsh-theme"
    else
      source "$ZSH/theme/$ZSH_THEME.zsh-theme"
    fi
  fi
fi
