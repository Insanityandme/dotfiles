# Enable colorized output, note that this is a mac OS X-only solution. Install coreutil if used on other platforms.
alias ls='ls -Gp'

# Show hidden files, proper list format, sorted after dates, colorized output, 
# slash to indicate dirs, symbols to indicate different types of files.
alias ll='ls -alrtGpF'

# Going down one directory
alias ..='cd ..'

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

# Aliases for virtualenv environments
alias pthway='source /Users/insanityandme/projects/.virtualenvs/lpthway/bin/activate'

# Bpython for python 3.5 (this would be for a global bpython, not really used atm)
alias bpython3.5='PYTHONPATH=/Library/Frameworks/Python.framework/Versions/2.7/bin/bpython python3.5 -m bpython.cli'
