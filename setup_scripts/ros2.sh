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
git config --global user.name "denden047"
git config --global user.email "sh.mn.nat@gmail.com"
git config --global core.editor 'vim -c "set fenc=utf-8"'	# set vim for default editer
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global core.precomposeunicode true
git config --global core.precomposeunicode true
git config --global core.quotepath false
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
sudo ln -sf $(which python3) /usr/bin/python

echo "create symbolic link..."
if [ -e ~/.bashrc ]; then
    mv ~/.bashrc ~/dotfiles/.bashrc.bak
fi
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.ssh/config ~/.ssh/config


# ====== VIM =======
rm -rf ~/dotfiles/.vim/bundle/
mkdir ~/dotfiles/.vim/bundle


echo "Finish!!!"
