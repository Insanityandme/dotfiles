#!/usr/bin/env bash

# Aliases
source ~/.bash/aliases.sh

# Virtualenv
source ~/.bash/virtualenv.sh

# Changing the apperance of the prompt
export PS1="\e[033mø \W \e[34m>\e[033m "

export WORKON_HOME=$HOME/projects/.virtualenvs
export PROJECT_HOME=$HOME/projects/python

export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
