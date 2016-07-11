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
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash

echo "Symlinking dotfiles..."
ln -s $PWD/.bash_profile ~/.bash_profile
ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.git-completion.sh ~/.git-completion.sh
ln -s $PWD/.npm-completion.sh ~/.npm-completion.sh
ln -s $PWD/.vimrc ~/.vimrc

echo "Creating empty .extras file..."
touch ~/.extras

echo "Reloading .bash_profile..."
source ~/.bash_profile

echo "All done!"
