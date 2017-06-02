alias tmux='TERM=xterm-256color tmux'

# The config files you want to be portable to other
CONFIG_LIST=".bashrc .bash_aliases .vimrc .vim/colors/skittles_dark_cw.vim .tmux.conf"

# Deploy configs on another server over scp
# $1 destination
function cfgdeploy () {
	for file in $CONFIG_LIST; do scp ~/$file $1:$file; done
}

# git search for pattern
function ggrep () {
	git grep ${@:1}
}

# git search for filename with pattern
function gfind () {
	git ls-files | grep ${@:1}
}

# append to lines starting with $1 the string $2 in the files passed after $2
function addtoline () {
	sed -i "/$1/s/$/$2/" ${@:3}
}

function replace () {
	sed -i "s/$1/$2/g" ${@:3}
}
