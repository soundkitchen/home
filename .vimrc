"
" .vimrc
"


" Basic settings.
set nocompatible
set modeline
set modelines=5
"set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=0
"set number
set autoindent
set directory=~/.vim/swap
set backupdir=~/.vim/backup
"set laststatus=2
set showcmd
set backspace=indent,eol,start
set wildmode=list:longest
set hlsearch
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

filetype plugin indent on


" for neobundle.
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" You can specify revision/branch/tag.
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

NeoBundle 'fatih/vim-go'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'evanmiller/nginx-vim-syntax'
"NeoBundle 'cakebaker/scss-syntax.vim'
"NeoBundle 'tpope/vim-surround'
"NeoBundle 'editorconfig/editorconfig-vim'
"NeoBundle 'jeroenbourgois/vim-actionscript'
NeoBundle 'vim-erlang/vim-erlang-runtime'
NeoBundle 'elixir-lang/vim-elixir'

NeoBundleCheck


" Color scheme.
syntax enable
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
"au BufNewFile,BufRead *.mxi :set filetype=xml
"au BufNewFile,BufRead *.mxml :set filetype=xml
"au BufNewFile,BufRead *.as :set filetype=actionscript bomb
"au BufNewFile,BufRead *.scss :set filetype=scss
au BufNewFile,BufRead *.coffee :set filetype=coffee
