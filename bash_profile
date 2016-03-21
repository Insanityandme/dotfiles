export PATH="$PATH:/usr/local/sbin"

# Sourcing .bashrc within bash_profile
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

##
# Your previous /Users/insanityandme/.bash_profile file was backed up as /Users/insanityandme/.bash_profile.macports-saved_2015-03-18_at_11:34:23
##

# MacPorts Installer addition on 2015-03-18_at_11:34:23: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

