#   .bashrc

PS1="\u@\[\033[00;33m\]\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ "

if [ -f ~/.subversion_bash_completion ]; then
    . ~/.subversion_bash_completion
fi

if [ -f ~/.hg_bash_completion ]; then
    . ~/.hg_bash_completion
fi

if [ -f ~/.git_bash_completion ]; then
    . ~/.git_bash_completion
fi

if [ -f ~/.django_bash_completion ]; then
    . ~/.django_bash_completion
fi

alias ls='ls -vGF'
#alias edit='gvim'
export EDITOR='vim'
export LSCOLORS='gxfxbxcxbxdgdchbhghbhc'
#   python, ruby console issue.
#export DYLD_INSERT_LIBRARIES="/opt/local/lib/libreadline.dylib"
