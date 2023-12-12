#!/bin/bash

git clone https://github.com/neovim/neovim
cd neovim
make -j CMAKE_BUILD_TYPE=Release CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
cd ..

git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make -j
cd ..
mkdir ~/.config/tmux
cp tmux.conf ~/.config//tmux

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/cacharle/c_formatter_42
cd c_formatter_42
pip3 install -e .

mv ~/.zshrc ~/.zshrc.old
cp .zshrc ~
source ~/.zshrc

mkdir ~/.config/
cd ~/.config/
git clone https://github.com/barAuChocolat/nvim.git
