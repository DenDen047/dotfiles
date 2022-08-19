#!/bin/bash

echo "update..."
sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y
echo -e "\n"

echo "install some softwares..."
sudo apt-get install -y vim
sudo apt-get install -y git
sudo apt-get install -y tmux
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

# echo "SSHkey setting..."
# ssh-keygen -t rsa -b 4096 -C "sh.mn.nat@gmail.com"
# clip < ~/.ssh/id_rsa.pub
# echo -e "\n"
# echo "Please paste id_rsa.pub to GitHub"
# echo -n "OK? [Y/n] "
# read check
# ssh -T git@github.com
# echo -e "\n"

echo "Python3 setting..."
sudo ln -s $(which python3) /usr/bin/python

echo "create symbolic link..."
if [ -e ~/.bashrc ]; then
    mv ~/.bashrc ~/dotfiles/.bashrc.bak
fi
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.ssh/config ~/.ssh/config


# ====== VIM =======
rm -rf ~/dotfiles/.vim/bundle/
mkdir ~/dotfiles/.vim/bundle


echo "Finish!!!"
