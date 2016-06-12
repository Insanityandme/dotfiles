#!/usr/bin/env bash

# Aliases
source ~/.bash/aliases.sh

# Changing the apperance of the prompt
export PS1="\e[033mø \W \e[34m>\e[033m "

export WORKON_HOME=$HOME/projects/.virtualenvs
export PROJECT_HOME=$HOME/projects/python
# export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/2.7./bin/virtualenvwrapper.sh
#source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

gpip(){
  PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

gpip3() {
  PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
