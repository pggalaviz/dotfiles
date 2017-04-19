
" -------------------------------------------------------------------------------------------
"  SETTINGS
" -------------------------------------------------------------------------------------------

" Remap leader (Use space as leader)
let mapleader = ' '
noremap <Space> <Nop>
  
" Global Settings
filetype plugin indent on                       " Enable full filetype detection
syntax on                                       " Syntax highlighting on
syntax enable                                   " Syntax highlighting on
set encoding=utf-8                              " Use utf-8
set title                                       " Let Vim set window title
set hidden                                      " Put current buffer to background without saving
set autochdir                                   " Change dir to file on current window

" Positioning
set number                                      " Set line number
set relativenumber                              " Set relative number
set ruler                                       " Set line/col of cursor

" UI
set noshowmode                                  " Dont display current mode (Using vim-airline)
set scrolloff=5                                 " Allways show 5 lines below/up when scrolling
set shortmess=aoOtTI                            " Short messages
set showcmd                                     " Shows current command combo
set showmatch                                   " Show matching brackets
set mouse=n                                     " Use basic mouse for changing windows split sizes
set clipboard+=unnamedplus                      " Yank and paste with the system clipboard
set pumheight=10                                " Completion window max height

" Files
set autowrite                                   " Autosave before :next, :make, etc.
set autoread                                    " Autoread file when changed outside of Vim
set noswapfile                                  " No swapfile for buffer
set nobackup                                    " Don't create annoying backup files
set confirm                                     " Ask for confirmation if unsaved file

" Command Line
set wildmenu                                    " Menu for command line completion using <TAB>

" Tabs/Spaces
set autoindent                                  " Auto indent
set expandtab                                   " Always use spaces
set tabstop=4                                   " Tab size (Columns per tab)
set shiftwidth=4                                " Amount to shift by
set softtabstop=4                               " Delete x spaces on backsp.
set smarttab                                    " use 'shiftwidth' when inserting
set backspace=indent,eol,start                  " Intuitive backspacing in insert mode

" Format
set textwidth=100                               " Wrap text starting here
set nowrap                                      " Disable softwrap
set splitbelow                                  " Open horizontal splits below
set splitright                                  " Open vertical splits right

" Search
set hlsearch                                    " Highligh search
set incsearch                                   " Search as you type
set ignorecase                                  " Ignore case in matching
set smartcase                                   " Match capitals in search

" Other
set completeopt=menu                            " Shows completions in popup
set visualbell                                  " Don't beep
set noerrorbells                                " Don't beep
set iskeyword+=-,_                              " Consider - and _ part of a word
set history=100                                 " Remember more commands and search history
set undolevels=100                              " Maximum levels of changes that can be undone

