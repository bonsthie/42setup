#!/bin/bash

mkdir ~/42Setup
cd ~/42Setup
git clone https://github.com/neovim/neovim
cd neovim
make  CMAKE_BUILD_TYPE=Release CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
cd ..

git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
cd ..

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/cacharle/c_formatter_42
cd c_formatter_42
pip3 install -e .

cat .zshrc >> ~/.zshrc

mkdir ~/.config/
cd ~/.config/
git clone https://github.com/barAuChocolat/nvim.git
