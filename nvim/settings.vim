
" -------------------------------------------------------------------------------------------
"  SETTINGS
" -------------------------------------------------------------------------------------------

" Remap leader (Use space as leader)
let g:mapleader = ' '
" Map local leader
let g:maplocalleader = ','

" Release keymappings prefixes, evict entirely for use of plug-ins.
nnoremap <Space> <Nop>
xnoremap <Space> <Nop>
nnoremap ,       <Nop>
xnoremap ,       <Nop>
nnoremap ;       <Nop>
xnoremap ;       <Nop>

" Global Settings
filetype plugin indent on                       " Enable full filetype detection
syntax on                                       " Syntax highlighting on
syntax enable                                   " Syntax highlighting on
set title                                       " Let Vim set window title
set hidden                                      " Put current buffer to background without saving
set autochdir                                   " Change dir to file on current window
set synmaxcol=240                               " Don't syntax highlight long lines
set omnifunc=syntaxcomplete#Complete

" Positioning
set number                                      " Set line number
set relativenumber                              " Set relative number
set ruler                                       " Set line/col of cursor

" UI
set noshowmode                                  " Dont display current mode (Using vim-airline)
set scrolloff=999                               " Cursor always on center of screen
set sidescrolloff=5                             " Keep at least 5 lines left/right
set shortmess=aoOtTI                            " Short messages
set showcmd                                     " Shows current command combo
set showmatch                                   " Show matching brackets
set mat=2                                       " How many tenths of a second to blink matching brackets
set mouse=n                                     " Use basic mouse for changing windows split sizes
set clipboard+=unnamedplus                      " Yank and paste with the system clipboard
set pumheight=10                                " Completion window max height
set numberwidth=2                               " Keep line number gutter cozy
set list                                        " Show hidden characters
set listchars=tab:▸\ ,trail:·,nbsp:␣            " Display tabs and trailing spaces
set listchars+=extends:»                        " show a » when a line goes off the right edge of the screen
set listchars+=precedes:«                       " show a « when a line goes off the left edge of the screenk
set conceallevel=2
set colorcolumn=81                              " Color the colum 81

" Files
set autowrite                                   " Autosave before :next, :make, etc.
set autoread                                    " Autoread file when changed outside of Vim
set noswapfile                                  " No swapfile for buffer
set nobackup                                    " Don't create annoying backup files
set confirm                                     " Ask for confirmation if unsaved file

" Completion
set wildmenu                                    " Menu for command line completion using <TAB>
set wildmode=list:longest,full
set wildignorecase                              " Ignore case
set wildignore+=*.zip,*.tar,*.tar*,*.rar        " Ignore archive files
set wildignore+=*.png,*.jpg,*.jpeg,*.gif        " Ignore images
set wildignore+=*.pdf                           " Ignore several files and directories
set wildignore+=*.DS_Store
set wildignore+=*yarn.lock*
set wildignore+=*.gem,*.obj,*.out,*.swp
set wildignore+=.git,.hg,*/.git/*,**/.git/**
set wildignore+=*/.bundle/*
set wildignore+=*/.sass-cache/*
set wildignore+=*/node_modules/*,**/node_modules/**
set wildignore+=**/vendor/**
set wildignore+=**/build/**
set wildignore+=**/deps/**
set wildignore+=**/log/**
set wildignore+=*/tmp/*,**/tmp/**

" Tabs/Spaces
set autoindent                                  " Auto indent
set smartindent                                 " Smart autoindenting on new lines
set expandtab                                   " Always use spaces
set tabstop=2                                   " Tab size (Columns per tab)
set shiftwidth=2                                " Amount to shift by
set softtabstop=2                               " Delete x spaces on backsp.
set smarttab                                    " use 'shiftwidth' when inserting
set backspace=indent,eol,start                  " Intuitive backspacing in insert mode
set whichwrap+=<,>,h,l

" Format
set textwidth=80                                " Wrap text starting here
set nowrap                                      " Disable softwrap
set breakindent                                 " Breack with an indentation
set breakat=\ \	;:,!?                           " Long lines break chars
set linebreak                                   " Break long lines at 'breakat'
set showbreak=+                                 " Show a '+' at the beggining of wrapped lines
set splitbelow                                  " Open horizontal splits below
set splitright                                  " Open vertical splits right

" Search
set hlsearch                                    " Highligh search
set incsearch                                   " Search as you type
set infercase                                   " Ignore case in matching
set smartcase                                   " Match capitals in search

" Other
set completeopt+=noselect                       " Don't select a match in menu
set visualbell                                  " Don't beep
set noerrorbells                                " Don't beep
set iskeyword+=-,_                              " Consider - and _ part of a word
set history=500                                 " Remember more commands and search history
set undolevels=100                              " Maximum levels of changes that can be undone

