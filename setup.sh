#!/bin/bash

# Setup VSCode
code --install-extension vscodevim.vim

mkdir -p ~/Code

if [ ! -d "$HOME/.emacs.d" ]; then
  git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cp "$SCRIPT_DIR/.spacemacs" ~/.spacemacs

cp -R "$SCRIPT_DIR/neovim/user/" ~/.config/nvim/

