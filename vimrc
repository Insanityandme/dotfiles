set nocompatible " not vi compatible
" another comment lol
"--------------
" Load pathogen
"-------------- 
call pathogen#infect() 
colorscheme gotham256


"---------------------
" Basic editing config
"---------------------
syntax on " syntax highlighing
set nu " number lines
set backspace=indent,eol,start " allow backspacing over everything
filetype plugin indent on " enable file type detection
filetype indent on

" use 2 spaces instead of tabs during formatting
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"---------------
" Netrw settings
"---------------
let g:netrw_liststyle = 3 " Use tree-mode as default view
let g:netrw_browse_split = 4 " Open file in previous buffer
let g:netrw_perview = 1 " Preview window shown in a vertical split
let g:netrw_winsize = 20 " Netrw window size (20%)

"---------
" Bindings
"---------
let mapleader = "\<Space>"
:map <F3> :Vex <cr>

"-------------------
" Disable arrow keys, a good reminder!
"-------------------
nnoremap <left> :echoe "use h"<cr>
nnoremap <right> :echoe "use l"<cr>
nnoremap <up> :echoe "use k"<cr>
nnoremap <down> :echoe "use j"<cr>
