function start-work-session() {
  session='work'
  tmux has-session -t $session 2>/dev/null

  if [ $? != 0 ]
  then
    tmux new-session -d -s $session
    tmux selectp -t 1
    tmux splitw -h
    tmux selectp -t 1
    tmux splitw -v
    tmux attach-session -t $session
  else
    tmux attach-session -t $session
  fi
}

function start-server-session() {
  session='server'

  tmux has-session -t $sesion 2>/dev/null

  if [ $? != 0 ]
  then
    tmux new-session -d -s $session
    tmux selectp -t "$session:.1" -dh "ssh root@iamhgen.com"
    tmux splitw -h
    tmux attach-session -t $session
  else
    tmux attach-session -t $session
  fi
}
