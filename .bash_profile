#
# ~/.bash_profile
#

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

