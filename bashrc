#!/usr/bin/env bash

# Solving the PATH issue with homebrew, see http://rkulla.blogspot.se/2014/03/the-path-to-homebrew.html for more details
PATH=/usr/local/bin:$PATH

# Aliases
source ~/.bash/aliases.sh

# Changing the apperance of the prompt
export PS1="\e[033mø \w \e[34m>\e[033m "

export WORKON_HOME=$HOME/www/.virtualenvs
export PROJECT_HOME=$HOME/www/PythonProjects
source /usr/local/bin/virtualenvwrapper.sh

