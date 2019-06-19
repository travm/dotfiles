#########
# SETUP #
#########

# This file installs & symlinks
# all necessary files. Enjoy!

# Execution Timeline
# 1. Install git-bash-prompt and nvm
# 2. Symlink dotfiles
# 3. Create empty .extras file
# 3. Reload .bash_profile

echo "Installing git-bash-prompt..."
brew install bash-git-prompt

echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

echo "Symlinking dotfiles..."
ln -s $PWD/.bash_profile ~/.bash_profile
ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/completions/.git-completion.sh ~/.git-completion.sh
ln -s $PWD/completions/.npm-completion.sh ~/.npm-completion.sh
ln -s $PWD/configs/.vimrc ~/.vimrc
ln -s $PWD/configs/.tmux.conf ~/.tmux.conf

echo "Creating empty .extras file..."
touch ~/.extras

echo "Reloading .bash_profile..."
source ~/.bash_profile

echo "All done!"
