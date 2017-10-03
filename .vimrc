"
" .vimrc
"


" Basic settings.
set nocompatible
set modeline
set modelines=5
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=0
set autoindent
set directory=~/.vim/swap
set backupdir=~/.vim/backup
set showcmd
set backspace=indent,eol,start
set wildmode=list:longest
set hlsearch
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P


"dein Scripts-----------------------------

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('chr4/nginx.vim')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('vim-erlang/vim-erlang-runtime')
  call dein#add('elixir-editors/vim-elixir')
  call dein#add('fatih/vim-go')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


" Color scheme.
hi Comment ctermfg=Red
hi LineNr ctermfg=Cyan
hi StatusLine ctermfg=Black ctermbg=White
hi StatusLineNC ctermfg=Black ctermbg=White
hi VertSplit ctermfg=Black ctermbg=Green
hi Directory ctermfg=Cyan cterm=underline
hi Folded ctermfg=Magenta ctermbg=Black guifg=Magenta guibg=Black cterm=NONE gui=NONE
hi Search ctermfg=White ctermbg=Blue guifg=White guibg=Blue cterm=underline gui=underline
hi WhitespaceEOL ctermbg=Yellow
match WhitespaceEOL /\s\+$/


"   Other cmds.
au BufEnter * execute ":lcd " . expand("%:p:h")
au BufNewFile,BufRead *.coffee :set filetype=coffee
