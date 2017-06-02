#!/bin/bash

APP_LIST="tmux vim conky git"
DIR_LIST=".vim/colors"
CONFIG_LIST=".bashrc .gitconfig .vimrc .vim/colors/skittles_dark_cw.vim .tmux.conf .conkyrc" 

if [ "$1" = "rollout" ]; then
	for dir in $DIR_LIST; do
		mkdir -p "/home/$USER/$dir"
	done
	for file in $CONFIG_LIST; do
		cp "$file" "/home/$USER/$file"
	done
elif [ "$1" = "requirements" ]; then
	sudo apt install $APP_LIST
else
	echo "Usage:"
	echo "Argument 1:"
	echo "            rollout       to install configs"
	echo "            requirements  to install needed tools"
fi
