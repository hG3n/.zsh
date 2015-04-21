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
  alias chrome="chromium-browser"
fi

alias tree="tree -AC"
alias t="tree -AC"

# navigation
alias ..="cd .."
alias e="open ."
alias cdr="cd /"
alias lsl="ls -lh"
alias ls1="ls -1"
alias ls-a="ls -A "

# searching
alias findh="find ~ -name" # searches out of the ~ directory
alias finda="find / -name" # searches out of the main dir

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# program aliases
if [ $(uname) != "Linux" ]; then
  alias subl='/Applications/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2'
fi

# airport command
if [ $(uname) = "Darwin" ]; then
  alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"
fi

# connect to uni VPN
alias buw-intern-c="networksetup -connectpppoeservice VPN-BUW-Intern"
alias buw-intern-d="networksetup -disconnectpppoeservice VPN-BUW-Intern"
alias buw-extern-c="networksetup -connectpppoeservice VPN-BUW-Extern"
alias buw-extern-d="networksetup -disconnectpppoeservice VPN-BUW-Extern"

# sudo options
alias suranger="sudo ranger"

# programming and compiler
alias g++11="LANG=en g++-4.9 -std=c++11 -fdiagnostics-color=auto"
alias gcc11="LANG=en gcc-4.9 -std=c++11 -fdiagnostics-color=auto"
alias go="./start.sh"

# web and internet
alias pingg="ping -c 3 google.com"

# preset
alias preset_tex="cp ~/.presets/preset.tex ./"

# stupid key fixes
alias ragner="ranger"
alias clera="clear"
alias cler="clear"
alias mkae="make"


