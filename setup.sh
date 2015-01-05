#########
# SETUP #
#########

# This file installs & symlinks
# all necessary files. Enjoy!

# Execution Timeline
# 1. Install git-bash-prompt via homebrew
# 2. Symlink dotfiles
# 3. Reload .bash_profile

echo "Installing git-bash-prompt..."
brew install bash-git-prompt

echo "Symlinking dotfiles..."
ln -s $PWD/.bash_profile ~/.bash_profile
ln -s $PWD/.bashrc ~/.bashrc

# echo "Reloading .bash_profile..."
# source ~/.bash_profile

echo "All done!"