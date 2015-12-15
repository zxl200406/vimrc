#!/bin/sh

install_file()
{
	src=`pwd`"/"$1
	des="$HOME/$1"
	echo "
	src $src
	des $des"
	if [ -f $des -o -d $des ]; then
		mv -f $des $des".backup"
	fi
	ln -s $src $des
}

install_file .vimrc
install_file .bashrc
install_file .bash_profile
install_file .zshrc
install_file .gitignore
install_file .ssh/config
install_file .vim/.ycm_extra_conf.py

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone git://github.com/joelthelion/autojump.git

