" ┌───────────────────────────────────┐
" │              Vundle               │
" └───────────────────────────────────┘

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'vim-ruby'
Plugin 'Valloric/YouCompleteMe'

" colorscheme
Plugin 'vim-gotham'

" All of your Plugins must be added before the following line
call vundle#end()             

filetype plugin indent on 

" Brief help
" " :PluginList          - list configured plugins
" " :PluginInstall(!)    - install (update) plugins
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins

" ┌───────────────────────────────────┐
" │           END OF Vundle           │
" └───────────────────────────────────┘

"---------------------
" Basic editing config
"---------------------
colorscheme gotham256

syntax on " syntax highlighing
set nu " number lines
set backspace=indent,eol,start " allow backspacing over everything
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
