#
# ~/.bash_profile
#

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi

eval $(keychain --eval ~/.ssh/github)

[[ -f ~/.bashrc ]] && . ~/.bashrc

