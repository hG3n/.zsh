function get_pwd() {
   echo "${PWD/$HOME/~}"
}

PROMPT='
$fg_bold[cyan]hGen:$reset_color $fg_bold[yellow]%~$reset_color
>> '
