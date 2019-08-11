## common alias/config for unix like
function filter_file {
  grep -i "$1" $2
}

function open_file {
  FILE=$1
  MODE=$2

  if [[ -z $MODE ]]; then
    subl $FILE
  else
    vim $FILE    
  fi
}

alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias disk-usage="du -sh * .*"

# some other cmds
alias ..='cd ..'
alias ...='cd ../..'
alias sl='subl'
alias ll='ls -laGh'
alias ls='ls -G'
function vimrc {
  open_file ~/.vim/vimrc $1
}
function sshconf {
    open_file ~/.ssh/config $1
}
alias ss='ssh'
alias ssp='sshp'
function fname {
  find . -iname "*$1*"
}
alias pwdc="pwd | tr -d '\n' | tee | pbcopy"
alias i3=ipython3
alias i2=ipython2
alias tm=tmux
alias datetime="date +%Y%m%d_%H%M%S"
alias dt="date +%Y%m%d"
alias ts="date +%s"

function activate {
  if [[ -d './env' ]]; then
    DIR='./env/bin'
  elif [[ -d './bin' ]]; then
    DIR='bin'
  elif [[ -d '../bin' ]]; then
    DIR='../bin'
  else
    echo "activate dir not exists"
    return
  fi
  source "$DIR/activate"
}

function pss {
  ps aux | grep -v grep | grep -E "$1|PID"
}
alias e_id="awk '{print $2}'"
