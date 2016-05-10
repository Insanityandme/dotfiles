#!/usr/bin/env bash

# Aliases
source ~/.bash/aliases.sh

# Changing the apperance of the prompt
export PS1="\e[033mø \w \e[34m>\e[033m "

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=$HOME/www/.virtualenvs
export PROJECT_HOME=$HOME/www/PythonProjects
# source /usr/local/bin/virtualenvwrapper.sh

# Solving the PATH issue with homebrew, see http://rkulla.blogspot.se/2014/03/the-path-to-homebrew.html for more details
export PATH="/usr/local/bin:$PATH:/usr/local/sbin"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
