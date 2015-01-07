########
# BASE #
########

# Welcome
echo "Welcome, $USER."

# Add All Programs To Path
export PATH=/usr/local/bin:$PATH

# Save Command History To .bash_history File
shopt -s histappend

# Autocorrect Typos In Pathnames 
shopt -s cdspell

# Prefer US English & Use UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Set Default Editor To Vim
export EDITOR="vim"


###########
# ALIASES #
###########

# Personal
alias ll='ls -al';

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES;
killall Finder /System/Library/CoreServices/Finder.app'

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO;
killall Finder /System/Library/CoreServices/Finder.app'

# Resumator
[ -f "$HOME/.res-vm-aliases" ] && source $HOME/.res-vm-aliases

# Use Git’s Colored Diff When Available
hash git &>/dev/null
if [ $? -eq 0 ]; then
  function diff() {
    git diff --no-index --color-words "$@"
  }
fi


####################
# ADDITIONAL STUFF #
####################

# Git Branch Completion
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source $HOME/.git-completion.bash

# Git Repo Status Information
# https://github.com/magicmonty/bash-git-prompt
# To Install: brew install bash-git-prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

# Color Codes (Not Sure If Needed, ATM)
# https://gist.github.com/2136084
COLOR_BLACK="\[\033[0;30m\]"
COLOR_RED="\[\033[0;31m\]"
COLOR_GREEN="\[\033[0;32m\]"
COLOR_YELLOW="\[\033[0;33m\]"
COLOR_BLUE="\[\033[0;34m\]"
COLOR_MAGENTA="\[\033[0;35m\]"
COLOR_CYAN="\[\033[0;36m\]"
COLOR_WHITE="\[\033[0;37m\]"
COLOR_BOLD_RED="\[\033[1;31m\]"
COLOR_BOLD_GREEN="\[\033[1;32m\]"
COLOR_BOLD_YELLOW="\[\033[1;33m\]"
COLOR_BOLD_BLUE="\[\033[1;34m\]"
COLOR_BOLD_MAGENTA="\[\033[1;35m\]"
COLOR_BOLD_CYAN="\[\033[1;36m\]"
COLOR_BOLD_WHITE="\[\033[1;37m\]"
COLOR_NONE="\[\e[0m\]"


########
# MENU #
########
echo '==============================='
echo ' 1  cd /resumator'
echo ' r  tail apache errors'
echo '-------------------------------'
echo ' 2  cd /RESTumator'
echo ' c  clear symfony cache'
echo ' a  tail apache errors'
echo ' s  tail symfony errors'
echo '-------------------------------'
echo ' 0  update .bash_profile'
echo '==============================='
 
read OPTION
 
# Resumator
if [ "$OPTION" == "1" ]; then 
    cd "$HOME/git/resumator/resumator"
elif [ "$OPTION" == "r" ]; then
    cd $HOME/dev/vagrant-vms/resumator
    vagrant up
    vagrant ssh -c "sudo tail -f /var/log/httpd/resumator-error.log"
 
# RESTumator
elif [ "$OPTION" == "2" ]; then 
    cd "$HOME/git/resumator/resumator_api"
elif [ "$OPTION" == "c" ]; then
    sudo rm -rf $HOME/git/resumator/resumator_api/app/cache/development/
elif [ "$OPTION" == "a" ]; then
    cd $HOME/dev/vagrant-vms/resumator
    vagrant up
    vagrant ssh -c "sudo tail -f /var/log/httpd/restumator-error.log"
elif [ "$OPTION" == "s" ]; then
    cd $HOME/dev/vagrant-vms/resumator
    vagrant up
    vagrant ssh -c "sudo tail -f /data/src_api/app/logs/development.log"
 
# Utility
elif [ "$OPTION" == "0" ]; then
    subl ~/.bash_profile
fi
 
clear