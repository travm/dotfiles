#########
# SETUP #
#########

# This file installs & symlinks
# all necessary files. Enjoy!

# Execution Timeline
# 1. Install git-bash-prompt via homebrew
# 2. Symlink dotfiles
# 3. Restart Terminal

echo "Installing git-bash-prompt..."
brew install git-bash-prompt

echo "Symlinking docfiles..."
ln -s .bash_profile ~
ln -s .bashrc ~
