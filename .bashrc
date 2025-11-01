#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

fastfetch

# Kill any leftover ssh-agent processes
pkill ssh-agent

# Remove stale agent files and keychain cache
rm -rf ~/.ssh/agent
rm -f ~/.keychain/ant-laptop-*

# Start fresh keychain instance with github key
eval $(keychain --eval github)

# Android development

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
