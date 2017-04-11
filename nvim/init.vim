scriptencoding utf-8
set termguicolors

" -------------------------------------------------------------------------------------------
"  PLUGINS
" -------------------------------------------------------------------------------------------

" Call Plug
call plug#begin()

""" SYNTAX
Plug 'othree/html5.vim', {'for': ['html', 'vue']}           " HTML5 syntax & completion
Plug 'valloric/MatchTagAlways', {'for': ['html', 'vue']}    " Highlights matching tag

Plug 'othree/yajs.vim'   " Javascript syntax 
Plug 'othree/jspc.vim'   " Javascript parameter completion
Plug 'moll/vim-node'     " Node tools

Plug 'elzr/vim-json', {'for': 'json'}    " JSON highlighting
    let g:vim_json_syntax_conceal = 0

Plug 'posva/vim-vue', {'for': 'vue'}  " Vue.js syntax highlighting

Plug 'hail2u/vim-css3-syntax', {'for': ['css','scss', 'vue']}    " CSS and SCSS syntax & highlighting
Plug 'ap/vim-css-color', {'for':['css','scss', 'vue']}          " Show colors on CSS files

Plug 'elixir-lang/vim-elixir'   " Elixir language highlightning
Plug 'slashmili/alchemist.vim'  " Elixir Integration

Plug 'tmux-plugins/vim-tmux'            " Tmux file highlighting
Plug 'dag/vim-fish', {'for': 'fish'}    " Fish shell highlighting

""" UTILITIES

Plug 'itmammoth/doorboy.vim'        " Auto close brackets, quotations, etc.
Plug 'tpope/vim-surround'           " Easily change surroundings (parenthesis, brackets, etc)
Plug 'tomtom/tcomment_vim'          " Easily comment/uncomment words, lines or group of lines

Plug 'mattn/emmet-vim', {'for': ['html', 'vue']}    " Easy workflow for html & CSS
    let g:user_emmet_mode='a'
    let g:user_emmet_install_global = 0
    autocmd FileType html,css,scss EmmetInstall

Plug 'sbdchd/neoformat'             " Format code
Plug 'junegunn/vim-easy-align'      " Easy alignement
Plug 'Yggdroot/indentLine'          " Show a line to display indentation level
    let g:indentLine_setColors = 0
    let g:indentLine_char = '┆'

Plug 'lambdalisue/gina.vim'         " Control GIT repos from nvim session
Plug 'airblade/vim-gitgutter'       " Show GIT changes status in the gutter
Plug 'jreybert/vimagit'             " Easier GIT workflow

Plug 'scrooloose/nerdtree'          " Directory & files tree
Plug 'Xuyuanp/nerdtree-git-plugin'  " Nerdtree plugin to show GIT flags

Plug 'bogado/file-line'             " Open a file on arbitrary line: filename:line
Plug 'AndrewRadev/switch.vim'       " Quickly switch between patterns

Plug 'christoomey/vim-tmux-navigator'   " Navigate between Tmux and Vim splits
    let g:tmux_navigator_no_mappings = 1
    nnoremap <silent> <BS> :TmuxNavigateLeft<CR>
    nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
    nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
    nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
    nnoremap <silent> <C-ñ> :TmuxNavigatePrevious<cr>    

""" COMPLETION

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }   " Completion
    let g:deoplete#enable_at_startup = 1
Plug 'Shougo/neco-vim', {'for': 'vim'}                          " Vim script completion
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }     " Elixir completion
Plug 'fishbullet/deoplete-ruby', {'for': 'ruby'}                " Ruby completion
Plug 'ponko2/deoplete-fish', {'for': 'fish'}                    " Fish shell completion

Plug 'Shougo/neosnippet.vim'        " Snippets support
Plug 'Shougo/neosnippet-snippets'   " Snippets repository
Plug 'Shougo/echodoc.vim'           " Show functions signatures in the command line

""" THEMES & UI

Plug 'mhartington/oceanic-next'     " Oceanic Next theme
Plug 'vim-airline/vim-airline'      " Airline plugin
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline_powerline_fonts = 1
    let g:airline_enable_branch = 1
    let g:airline_branch_prefix = '⎇ '
    let g:airline_skip_empty_sections = 1
    let g:airline_theme='oceanicnext'

call plug#end()

" -------------------------------------------------------------------------------------------
"  BASICS
" -------------------------------------------------------------------------------------------

" Global Settings
filetype plugin indent on                       " Turn on plugins and indentation
syntax enable                                   " Syntax highlighting on
set number                                      " Set line number
set relativenumber                              " Set relative number 
set ruler                                       " Set line/col of cursor
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
set so=5                                        " Allways show 5 lines below when scrolling

"----------------------------------------------------------------------------------------------
" MAPPINGS
"----------------------------------------------------------------------------------------------

" NO ARROW KEYS COME ON!!!
map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>

map <C-n> :NERDTreeToggle<CR>               " Open/Close NERDTree

nnoremap <silent> <cr> :nohlsearch<cr>      " Clear the search buffer when hitting return

"----------------------------------------------------------------------------------------------
" THEMES / COLORS / UI
"----------------------------------------------------------------------------------------------

colorscheme OceanicNext







