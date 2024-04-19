#!/bin/bash

echo "update..."
sudo snap refresh
echo -e "\n"

echo "install some softwares..."
sudo snap install vim
sudo snap install git
sudo snap install tmux
sudo apt-get install -y zsh
echo -e "\n"

echo "git setting..."
git config --local user.name "denden047"
git config --local user.email "sh.mn.nat@gmail.com"
git config --local core.editor 'vim -c "set fenc=utf-8"'	# set vim for default editer
git config --local color.diff auto
git config --local color.status auto
git config --local color.branch auto
git config --local core.precomposeunicode true
git config --local core.precomposeunicode true
git config --local core.quotepath false
echo "=================="
git config --list
echo "=================="
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
