#
# ~/.bashrc
# screenfetch -D arch
echo -e -n "\x1b[\x35 q"
if [ -f $HOME/.gitalias ]; then
	. $HOME/.gitalias
fi
lsd () {
	cd "$2" $$ ls
}

bk () {
	cd ..
}
rnm () {
	cp -r "$1" "$2" && rm -rf "$1"
}

cmkdir () {
	mkdir "$1" && mkdir "$1"
}

pdf () {
	(apvlv "$@" &> /dev/null &)
}
alias pd='pushd ..'
alias ppd='popd'
alias dirs='dirs -v'
alias virt-manager='sudo virt-manager'
alias po='poweroff'
alias vi='nvim'
alias vim='nvim'
alias n="nvim"
alias v="nvim"
alias clear='clear && screenfetch -D arch'
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export MONITOR=HDMI-0
# If not running interactively, don't do anythinh

export PYTHONPATH=/usr/lib/python3.6/site-packages
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

[[ $- != *i* ]] && return

alias ls='ls -o -hX --group-directories-first --color=auto'``
export PS1='\[\e]2;Terminal\a\]prompt > '
