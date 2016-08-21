export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Ensure user-installed binaries take precedence
PATH=/usr/local/bin:$PATH
export PATH

# Sourcing .bashrc within bash_profile if it exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export LANG=en_US.UTF-8

# Environment Variables for django development, see http://12factor.net/config
export SOME_SECRET_KEY=1c3-cr3am-15-yummy
export FILIP_FREEZER_KEY=y34h-r1ght-d0nt-t0uch-my-1c3-cr34m
