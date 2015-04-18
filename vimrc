" not vi compatible
set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-ruby'
Plugin 'vim-gotham'

" All of your Plugins must be added before the following line
call vundle#end()            " required

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

" Tab through windows
nmap <Tab> <C-W>

" Restore cursor position
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

" Scroll down/up 5 lines
nmap <C-j> 5<C-e>
nmap <C-k> 5<C-y>
