
# Shorthand git clone: gcl barisbaris/dotfiles
gcl() { 
  git clone git@github.com:$1
}

ng() {
  grep -v $1
}

g() {
  grep $1
}

# Add your key to a remote servers authorised keys
authme() {
  ssh $1 'cat >>~/.ssh/authorized_keys' <~/.ssh/id_rsa.pub
}

# Show pretty man pages in OSX
pman() {
  man -t "${1}" | open -f -a /Applications/Preview.app
}

# Display piped output in OSX preview
pretty() {
  "$1" | groff -Tps | open -f -a /Applications/Preview.app
}

# This function is may need editing to suit your archive applications
ex () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjf $1      ;;
            *.tgz)       tar xzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}