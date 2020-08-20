#  _               _              
# | |__   __ _ ___| |__  _ __ ___ 
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__ 
# |_.__/ \__,_|___/_| |_|_|  \___|
#                                 

# xdg folder paths
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_DOCUMENTS_DIR="$HOME/documents"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/images"
export XDG_VIDEOS_DIR="$HOME/videos"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# xdg cleanup file
. .config/xdg_cleanup

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# history settings
HISTCONTROL=ignoreboth		# no duplicate lines in the history
shopt -s histappend			# append, dont overwrite history
HISTSIZE= HISFILESIZE= 		# infinite history
export HISTFILE=$XDG_DATA_HOME/bash/bash_history

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# vi mode in bash
set -o vi

# setting the prompt
PS1='\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# Alias definitions in a separate file.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# disable freezing by ctr+s
stty -ixon

# change directory by just typing the path without 'cd'
shopt -s autocd

# java and derby settings
export DERBY_INSTALL=/opt/Apache/db-derby-10.14.2.0-bin
export DERBY_HOME=/opt/Apache/db-derby-10.14.2.0-bin/bin
export JAVAFX_INSTALL=/opt/javafx-sdk-11.0.2/lib
export CLASSPATH=$DERBY_INSTALL/lib/derby.jar:$DERBY_INSTALL/lib/derbytools.jar:$DERBY_INSTALL/lib/derbyclient.jar:$DERBY_INSTALL/lib/derbyoptionaltools.jar:$DERBY_INSTALL/lib/derbyrun.jar:$JAVAFX_INSTALL/javafx.base.jar:$JAVAFX_INSTALL/javafx.controls.jar:$JAVAFX_INSTALL/javafx.fxml.jar:$JAVAFX_INSTALL/javafx.graphics.jar:$JAVAFX_INSTALL/javafx.media.jar:$JAVAFX_INSTALL/javafx.swing.jar:$JAVAFX_INSTALL/javafx-swt.jar:$JAVAFX_INSTALL/javafx.web.jar:.


# expanding the path
PROCESSING_HOME="$HOME/Documents/Java/processing/processing-3.3.7"
export PATH="$PATH:$HOME/.scripts:$HOME/.scripts/dmenu:$PROCESSING_HOME:/usr/share/java:$JAVA_HOME/bin"

