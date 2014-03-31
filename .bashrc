#   .bashrc

PS1="\u@\[\033[00;33m\]\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ "

export PATH="$HOME/.nodebrew/current/bin:$PATH"
export LANG='en_US.UTF-8'

alias ls='ls -vGF'
#alias edit='gvim'
export EDITOR='vim'
export LSCOLORS='gxfxbxcxbxdgdchbhghbhc'
#   python, ruby console issue.
#export DYLD_INSERT_LIBRARIES="/opt/local/lib/libreadline.dylib"
