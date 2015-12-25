function prompt_char {
  git branch >/dev/null 2>/dev/null && echo '⚧' && return
  echo '○'
}

function get_pwd() {
 echo "${PWD/$HOME/~}"
}

function print_branch() {
  if git ls-files >& /dev/null; then
    echo '→' $fg_bold[grey]$(prompt_char) :$reset_color$fg_bold[grey]$(git branch | sed -n '/\* /s///p')$reset_color;
  else
    echo '→' $fg_bold[grey]$(prompt_char)$reset_color
  fi
}

#PROMPT='
#$fg_bold[red]$HOST:$reset_color $fg_bold[blue]%~$reset_color $(print_branch)
#>> '

PROMPT='
$fg_bold[red]$USERNAME:$reset_color $fg_bold[blue]%~$reset_color $(print_branch)
>> '
