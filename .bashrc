########
# BASE #
########

# Welcome
echo "Hello, $USER."

# Add All Programs To Path
export PATH=/usr/local/bin:$PATH

# Enable 256 Colors
export TERM=screen-256color

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

# List All Files
alias ll='ls -al';

# Show/Hide All Files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES;
killall Finder /System/Library/CoreServices/Finder.app && echo "Dotfiles are now visible."'

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO;
killall Finder /System/Library/CoreServices/Finder.app && echo "Dotfiles are now hidden."'

# Open In iA Writer
alias ia="open $1 -a /Applications/iA\ Writer.app"


#########################
# PROMPTS & COMPLETIONS #
#########################

# Official Git Completions
# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
source $HOME/.git-completion.sh

# Official Git Prompt
# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source $HOME/.git-prompt.sh

# npm Completion
source $HOME/.npm-completion.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Custom Prompt
# PS1='\W $(__git_ps1 "(%s) ")-> '
# PS1='\[$txtblu\W$txtrst\] $(__git_ps1 "$txtwht(%s)$txtrst ")-> '
PS1='\[\e[0;34m\W\e[0m\] $(__git_ps1 "\e[0;37m(%s)\e[0m ")-> '


##########
# EXTRAS #
##########

# Extras File
# For example, Pebble SDK w/ custom location.
# Update .extras file in home directory.
source $HOME/.extras


