#!/bin/bash

echo "update..."
sudo yum update
sudo yum upgrade -y
echo -e "\n"

echo "install some softwares..."
sudo yum install -y vim
sudo yum install -y git
sudo yum install -y zsh
sudo yum install -y tmux
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