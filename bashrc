source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh

export TERM=xterm-256color
export PATH=$PATH:/usr/local/git/bin/:/Users/theiscorfixen/bin/:/Users/theiscorfixen/.composer/vendor/bin:
if tput setaf 1 &> /dev/null; then
    tput sgr0
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
        MAGENTA=$(tput setaf 9)
        ORANGE=$(tput setaf 172)
        GREEN=$(tput setaf 190)
        PURPLE=$(tput setaf 141)
        WHITE=$(tput setaf 0)
    else
        MAGENTA=$(tput setaf 5)
        ORANGE=$(tput setaf 4)
        GREEN=$(tput setaf 2)
        PURPLE=$(tput setaf 1)
        WHITE=$(tput setaf 7)
    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
else
    MAGENTA="\033[1;31m"
    ORANGE="\033[1;33m"
    GREEN="\033[1;32m"
    PURPLE="\033[1;35m"
    WHITE="\033[1;37m"
    BOLD=""
    RESET="\033[m"
fi
export MAGENTA
export ORANGE
export GREEN
export PURPLE
export WHITE
export BOLD
export RESET
export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
#export PS1="\h:\[\e[0;32m\]\w\[\e[m\] "
export PS2="\[$MAGENTA\]→ \[$RESET\]"
export CLICOLOR=1
#export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export LSCOLORS="gxfxcxdxbxegedabagacad"
if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi
alias chrome='/usr/bin/open -a "/Applications/Google Chrome.app"'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
export PATH=$PATH:/Users/theiscorfixen/core-tools:/Users/theiscorfixen/development/flutter/bin: