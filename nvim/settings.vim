
" -------------------------------------------------------------------------------------------
"  SETTINGS
" -------------------------------------------------------------------------------------------

" Global Settings
filetype plugin indent on                       " Turn on plugins and indentation
syntax enable                                   " Syntax highlighting on
set number                                      " Set line number
set relativenumber                              " Set relative number 
set ruler                                       " Set line/col of cursor
set noshowmode                                  " Dont display current mode (Using vim-airline)
set noswapfile                                  " No swapfile for buffer

" Tabs
set autoindent                                  " Auto indent
set expandtab                                   " Expand tabs to spaces
set tabstop=4                                   " Tab size (Columns per tab)
set shiftwidth=4                                " Amount to shift by
set softtabstop=4                               " Delete x spaces on backsp.

" Format
set textwidth=120                               " Wrap text starting here
set nowrap                                      " Disable softwrap
set splitbelow                                  " Open horizontal splits below
set splitright                                  " Open vertical splits right

" Search
set hlsearch				                    " Highligh search
set incsearch                                   " Search as you type
set ignorecase                                  " Ignore case in matching
set smartcase                                   " Match capitals in search

" Other
set confirm                                     " Ask for confirmation
set showcmd                                     " Shows current command combo
set completeopt=menu                            " Shows completions in popup
set showmatch                                   " Show matching brackets
set so=5                                        " Allways show 5 lines below/up when scrolling

