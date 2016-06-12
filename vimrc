" ┌───────────────────────────────────┐
" │              Vundle               │
" └───────────────────────────────────┘

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'
Plugin 'vim-virtualenv'
Plugin 'wakatime/vim-wakatime'

" Snippets are seperated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" colorscheme
Plugin 'vim-colors-solarized'

" syntax checker for the style guide PEP-8 in python
Plugin 'vim-flake8'

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
set clipboard=unnamed " use clipboards of vim and wim
syntax on " syntax highlighting

" Color Schemes settings
let g:solarized_termcolors=256
set t_Co=256
set background=light
colorscheme solarized
call togglebg#map("<F5>")

set nu " number lines
set backspace=indent,eol,start " allow backspacing over everything
filetype indent on
set showmatch " show the matching part of the pair [] {} and ()


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
:map <F3> :Vex <cr> 

" tab through windows in vim
nmap <Tab> <C-w>w
nmap <S-Tab> <C-w>h

" changing windows vertically and horizontally
nmap <Up> <C-w>k
nmap <Down> <C-w>j
nmap <Left> <C-w>h
nmap <Right> <C-w>l

let mapleader = "\<space>"

" Tab through windows
nmap <Tab> <C-W>w

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

map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Recommended settings for YCM (YouCompleteMe) 
let g:ycm_autoclose_preview_window_after_completion = 1 " Removes autocomplete window when you're done
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_server_python_interpreter = ''

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

" ------------------------
" Python specific settings
" ------------------------

" To ensure that all developers are using a standard tab format (as long as
" they are using Vim), you can add a Vim modeline (special comment) to your
" files, to set people in the same mode for that file. 
" Example, # vim: ai ts=4 sts=4 sw=4

" Tab Setting for Python and Vim
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" Proper PEP8 indentation
" (https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/)
" au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

" UTF8 Support
set encoding=utf-8

" Python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Make your code look pretty
let python_highlight_all=1

