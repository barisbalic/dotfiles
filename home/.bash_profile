export PATH=$PATH:/usr/local/mysql/bin
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home/
export HADOOP_HOME=/Users/baris/tools/hadoop-0.20.2+737/

export GEM_PRIVATE_KEY='~/.keys/gem-private_key.pem'
export GEM_CERTIFICATE_CHAIN='~/.keys/gem-public_cert.pem'

export EDITOR='mate -w'
export GEMEDITOR='mate'
export EVENT_NOKQUEUE=1

export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export GREP_OPTIONS='--color=auto'

source ~/.bash_aliases
source ~/.bash_functions
source ~/.git-completion

PS1='\h:\W$(__git_ps1 " (%s)") \u\$ '

if [[ -s ~/.rvm/scripts/rvm ]] ; then  source ~/.rvm/scripts/rvm ; fi
