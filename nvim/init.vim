scriptencoding utf-8

" Global Settings
filetype indent plugin on                       " Turn on plugins
syntax enable                                   " Syntax highlighting on
set ignorecase                                  " Ignore case in matching
set smartcase                                   " Match capitals in search
set number                                      " Set line number
" Tabs
set expandtab                                   " Expand tabs to spaces
set tabstop=4                                   " Tab size
set shiftwidth=4                                " Amount to shift by
set softtabstop=4                               " Delete x spaces on backsp.
" Format
set textwidth=120
" Other
set confirm                                     " Ask for confirmation
set showcmd                                     " Shows current command combo
" Search
set hlsearch				                    " Highligh search
set incsearch                                   " Search as you type
nnoremap <silent> <cr> :nohlsearch<cr>          " Clear the search buffer when hitting return

" NO ARROW KEYS COME ON!!!
map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>

""" PLUGINS

" Call Plug
call plug#begin()



call plug#end()








