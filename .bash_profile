#
# .bash_profile for OSX
#

export LANG=en_US.UTF-8
export EDITOR='vim'
export LSCOLORS='gxfxbxcxbxdgdchbhghbhc'

if [ -f "${HOME}/.bashrc" ]; then
    . "${HOME}/.bashrc"
fi

# setup homebrew if exists.
if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# setup direnv if exists.
if [ ! -z `which direnv` ]; then
  eval "$(direnv hook bash)"
fi

if [ -d $HOME/.cargo ]; then
  . "$HOME/.cargo/env"
fi

if [ -d "${HOME}/bin" ]; then
    PATH="${HOME}/bin:${PATH}"
fi

