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
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'syntastic'
Plugin 'vim-virtualenv'


" Snippets are seperated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

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

" Jump between tabs
nmap <leader>1 gT
nmap <leader>2 gT

" Restore cursor position
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

" Scroll down/up 5 lines
nmap <C-j> 5<C-e>
nmap <C-k> 5<C-y>

" To ensure that all developers are using a standard tab format (as long as
" they are using Vim), you can add a Vim modeline (special comment) to your
" files, to set people in the same mode for that file. 
" Example, # vim: ai ts=4 sts=4 sw=4

" Tab Setting for Python and Vim
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" Recommended settings for YCM (YouCompleteMe) 
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" YouCompleteMe and Ultisnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" Recommended syntastic settings 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


Bundle 'wakatime/vim-wakatime'
