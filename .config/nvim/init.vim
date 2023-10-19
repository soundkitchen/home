set expandtab
set tabstop=4
set softtabstop=-1
set shiftwidth=0

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
Jetpack 'mattn/vim-goimports'
Jetpack 'posva/vim-vue'
Jetpack 'leafgarland/typescript-vim'
call jetpack#end()

" color scheme.
hi WhitespaceEOL ctermbg=Yellow
match WhitespaceEOL /\s\+$/

" vim-lsp settings.
let g:lsp_diagnostics_echo_cursor=1
"let g:lsp_diagnostics_virtual_text_enabled=0

" vim-terraform settings.
let g:terraform_fmt_on_save=1
let g:terraform_align=1

" other cmds.
au BufEnter * execute ":lcd " . expand("%:p:h")
