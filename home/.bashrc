source ~/.bash/config
source ~/.bash/completion
source ~/.bash/paths
source ~/.bash/aliases
source ~/.bash/functions
source ~/.bash/osx
# source ~/.bash/prompt


function __git_dirty {
  git diff --quiet HEAD &>/dev/null 
  [ $? == 1 ] && echo " (d!)"
}

function __git_branch {
  __git_ps1 "(%s)"
}

function __rbenv_version {
  # STILL TO DO
}

bash_prompt() {
  local NONE="\[\033[0m\]"    # unsets color to term's fg color

  # regular colors
  local K="\[\033[0;30m\]"    # black
  local R="\[\033[0;31m\]"    # red
  local G="\[\033[0;32m\]"    # green
  local Y="\[\033[0;33m\]"    # yellow
  local B="\[\033[0;34m\]"    # blue
  local M="\[\033[0;35m\]"    # magenta
  local C="\[\033[0;36m\]"    # cyan
  local W="\[\033[0;37m\]"    # white

  local UC=$W                 # user's color
  [ $UID -eq "0" ] && UC=$R   # root's color

  PS1="$G\$(__rbenv_version)$W\w $Y\$(__git_branch)$R\$(__git_dirty)${NONE}$ "
}

bash_prompt
unset bash_prompt
# PS1='$\W$(__git_ps1 " (%s)") \u\$ '
# PS1="$W\$(__my_rvm_ruby_version)$R\w $Y\$(__git_branch)$R\$(__git_dirty)${NONE}$"