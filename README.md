dotfiles
========
This is my simplistic dotfiles setup.

## Installation

Installation is simple. To install, clone the git repo to your local machine:

```bash
git clone https://github.com/travm/dotfiles.git
```

Once complete, navigate to the cloned directory and run the setup file:

```bash
bash setup.sh
```

This file will:

1. Attempt to install [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt "bash-git-prompt on GitHub") via Homebrew. 
2. Symlink all necessary files to your home directory (~).

Once completed, you can either quit and reopen Terminal, or you can reload the .bash_profile like so:

```bash
source ~/.bash_profile
```

Enjoy!