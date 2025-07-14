#!/bin/bash

echo "update..."
sudo apt-get update
sudo apt-get upgrade -y
echo -e "\n"

echo "install some softwares..."
sudo apt-get install -y vim
sudo apt-get install -y git
sudo apt-get install -y zsh
sudo apt-get install -y tmux
echo -e "\n"

echo "create symbolic link..."
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshenv ~/.zshenv
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.ssh/config ~/.ssh/config


# ====== VIM =======
rm -rf ~/dotfiles/.vim/bundle/
mkdir ~/dotfiles/.vim/bundle

# ====== ZSH =======
chsh -s /bin/zsh


echo "Finish!!!"
