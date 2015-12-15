#!/bin/sh


uninstall()
{
	des="$HOME/$1"
	echo "
	des $des"

	rm -rf $des
}

uninstall .bashrc
uninstall .vimrc
uninstall .bash_profile
uninstall .zshrc
uninstall .gitignore
uninstall .ssh/config
uninstall .vim/.ycm_extra_conf.py
