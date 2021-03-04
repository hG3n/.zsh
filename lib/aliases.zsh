# zsh
alias zshreload="source ~/.zshrc"

# folders and files
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bash_profile"
alias bashalias="vim ~/.bash_aliases"

alias zshrc="vim ~/.zshrc"
alias zshfolder="cd ~/.zsh/"
alias zshalias="vim ~/.zsh/lib/aliases.zsh"
alias zshtheme="vim ~/.zsh/theme/hGen.zsh-theme"

alias sshlist="vim ~/.ssh/known_hosts"

if [ $(uname) = "Linux" ]; then
  alias chrome="chromium-browser&"
fi

alias tree="tree -AC"
alias t="tree -AC"
alias dirt="tree -AC -d -I 'node_modules'"

alias df="df -h"

# navigation
alias ..="cd .."

if [ $(uname) = "Linux" ]; then
  alias e="nautilus ."
else
  alias e="open ."
fi

alias lsl="ls -lh"
alias ls1="ls -1"
alias ls-a="ls -A "
alias lls="ls -Alht"

alias df="df -h"
alias dus="du -sh"

# searching
alias findh="find ~ -name" # searches out of the ~ directory
alias finda="find / -name" # searches out of the main dir

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# airport command
if [ $(uname) = "Darwin" ]; then
  alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"
fi

# sudo options
alias suranger="sudo ranger"

# web and internet
alias pingg="ping -c 3 google.com"

# stupid key fixes
alias ragner="ranger"
alias clera="clear"
alias cler="clear"
alias mkae="make"

alias air="BluetoothConnector 38-F9-D3-B1-E5-D1 --notify"


