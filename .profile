#
#   .bash_profile for OSX
#

if [ -f "${HOME}/.bashrc" ]; then
    . "${HOME}/.bashrc"
fi

if [ -d "${HOME}/FlexSDK" ]; then
    if [ -d "${HOME}/FlexSDK/bin" ]; then
        PATH="${HOME}/FlexSDK/bin:${PATH}"
    fi
fi

if [ -d "/opt/local" ]; then
    if [ -d "/opt/local/bin" ]; then
        PATH="/opt/local/bin:${PATH}"
    fi
    if [ -d "/opt/local/sbin" ]; then
        PATH="/opt/local/sbin:${PATH}"
    fi
fi

if [ -d "/usr/local/git" ]; then
    PATH="/usr/local/git/bin:${PATH}"
fi

if [ -d "${HOME}/bin" ]; then
    PATH="${HOME}/bin:${PATH}"
fi
