"
" .vimrc
"

" basic settings.
set nocompatible
set modeline
set modelines=5
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set expandtab
set tabstop=4
set softtabstop=-1
set shiftwidth=0
set autoindent
set directory=~/.vim/swap
set backupdir=~/.vim/backup
set showcmd
set backspace=indent,eol,start
set wildmode=list:longest
set hlsearch
set background=dark
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" color scheme.
"hi Comment ctermfg=Red
hi LineNr ctermfg=Cyan
hi StatusLine ctermfg=Black ctermbg=White
hi StatusLineNC ctermfg=Black ctermbg=White
"hi VertSplit ctermfg=Black ctermbg=Green
hi Directory ctermfg=Cyan cterm=underline
hi Folded ctermfg=Magenta ctermbg=Black guifg=Magenta guibg=Black cterm=NONE gui=NONE
hi Search ctermfg=White ctermbg=Blue guifg=White guibg=Blue cterm=underline gui=underline
hi WhitespaceEOL ctermbg=Yellow
match WhitespaceEOL /\s\+$/
syntax enable
filetype plugin indent on

" jetpack settings.
packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} " required
Jetpack 'github/copilot.vim'
Jetpack 'prabirshrestha/vim-lsp'
Jetpack 'mattn/vim-lsp-settings'
Jetpack 'prabirshrestha/asyncomplete.vim'
Jetpack 'prabirshrestha/asyncomplete-lsp.vim'
Jetpack 'hashivim/vim-terraform'
Jetpack 'chr4/nginx.vim'
Jetpack 'mattn/go-imports'
Jetpack 'posva/vim-vue'
Jetpack 'digitaltoad/vim-pug'
Jetpack 'leafgarland/typescript-vim'
call jetpack#end()

" vim-lsp settings.
let g:lsp_diagnostics_echo_cursor=1
let g:lsp_diagnostics_virtual_text_enabled=0

" vim-terraform settings.
let g:terraform_fmt_on_save=1
let g:terraform_align=1

" other cmds.
au BufEnter * execute ":lcd " . expand("%:p:h")
