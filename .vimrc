"
" .vimrc
"

"   Basic settings.
set nocompatible
"set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set expandtab
set tabstop=4
set shiftwidth=4
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

filetype plugin on

" map.
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>

" Color scheme.
syntax enable
hi Comment ctermfg=Red cterm=NONE
hi LineNr ctermfg=Cyan cterm=NONE
hi StatusLine ctermfg=Black ctermbg=White cterm=NONE
hi StatusLineNC ctermfg=Black ctermbg=White
hi VertSplit ctermfg=Black ctermbg=Green
hi Directory ctermfg=Cyan cterm=underline
hi Folded ctermfg=Magenta ctermbg=Black guifg=Magenta guibg=Black cterm=NONE gui=NONE
hi Search ctermfg=White ctermbg=Blue guifg=White guibg=Blue cterm=underline gui=underline
hi WhitespaceEOL ctermbg=Yellow
match WhitespaceEOL /\s\+$/

"   Other cmds.
au BufEnter * execute ":lcd " . expand("%:p:h")
au BufNewFile,BufRead *.mxi :set filetype=xml
au BufNewFile,BufRead *.mxml :set filetype=xml
au BufNewFile,BufRead *.as :set filetype=actionscript bomb
au BufNewFile,BufRead *.hx :set filetype=haxe
au BufNewFile,BufRead *.pde :set filetype=arduino

"   SnippetsEmu.
"let g:snippetsEmu_key = "<C-B>"

"   snipMate
let g:SuperTabMappingForward = "<C-B>"
let g:SuperTabMappingBackward = "<C-B>"
ino <silent> <C-B> <c-r>=TriggerSnippet()<cr>
snor <silent> <C-B> <esc>i<right><c-r>=TriggerSnippet()<cr>
