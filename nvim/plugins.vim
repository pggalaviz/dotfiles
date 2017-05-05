" -------------------------------------------------------------------------------------------
"  PLUGINS
" -------------------------------------------------------------------------------------------

" Call vim-plug
call plug#begin()

" -------------------------------------------------------------------------------------------
" SYNTAX & HIGHTLIGHTING
" -------------------------------------------------------------------------------------------

"  HTML
Plug 'othree/html5.vim', {'for': ['html', 'vue']}           " HTML5 syntax & completion
Plug 'valloric/MatchTagAlways', {'for': ['html', 'vue']}    " Highlights matching tag

" Javascript
Plug 'othree/yajs.vim', {'for': [ 'javascript', 'jsx', 'vue', 'javascript.jsx' ]}   " Javascript syntax
Plug 'othree/jspc.vim', {'for': [ 'javascript', 'jsx', 'vue', 'javascript.jsx' ]}   " Javascript parameter completion
Plug 'moll/vim-node', {'for': [ 'javascript', 'jsx', 'vue', 'javascript.jsx' ]}     " Node tools

" Json
Plug 'elzr/vim-json', {'for': 'json'}    " JSON highlighting

" Vue
Plug 'posva/vim-vue', {'for': 'vue'}  " Vue.js syntax highlighting

" CSS & STYLING
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'vue']}              " CSS and SCSS syntax & highlighting
Plug 'cakebaker/scss-syntax.vim', {'for': ['scss', 'vue']}          " SCSS syntax
Plug 'wavded/vim-stylus', { 'for': ['styl', 'vue']}                 " Stylus syntax & highlighting
Plug 'ap/vim-css-color', {'for':['css', 'scss', 'styl', 'vue',]}    " Show colors on CSS files

" ELIXIR
Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}   " Elixir language highlightning
Plug 'slashmili/alchemist.vim', {'for': 'elixir'}  " Elixir Integration

" TOOLS
Plug 'tmux-plugins/vim-tmux', {'for': 'tmux'}   " Tmux file highlighting
Plug 'dag/vim-fish', {'for': 'fish'}            " Fish shell highlighting

" -------------------------------------------------------------------------------------------
" UTILITIES
" -------------------------------------------------------------------------------------------

" Delimiters
Plug 'itmammoth/doorboy.vim'        " Auto close brackets, quotations, etc.
Plug 'tpope/vim-surround'           " Easily change surroundings (parenthesis, brackets, etc)

" Comments
" Plug 'tomtom/tcomment_vim'        " Easily comment/uncomment words, lines or group of lines
Plug 'tpope/vim-commentary'         " Easily comment/uncomment words, lines or group of lines

Plug 'mattn/emmet-vim', {'for': ['html', 'vue', 'css', 'scss', 'javascript', 'jsx']}    " Easy workflow for html & CSS

" Format/Indentation
Plug 'sbdchd/neoformat'             " Format code
Plug 'junegunn/vim-easy-align'      " Easy alignement
Plug 'Yggdroot/indentLine'          " Show a line to display indentation level
Plug 'AndrewRadev/splitjoin.vim', {'on': ['SplitjoinJoin', 'SplitjoinSplit']}   "Transition between multiline and single-line code

" Git
Plug 'lambdalisue/gina.vim'         " Control GIT repos from nvim session
Plug 'airblade/vim-gitgutter'       " Show GIT changes status in the gutter
Plug 'jreybert/vimagit'             " Easier GIT workflow

" Nerdtree
Plug 'scrooloose/nerdtree'          " Directory & files tree
Plug 'Xuyuanp/nerdtree-git-plugin'  " Nerdtree plugin to show GIT flags

" Skim fuzzy finder (fzf option in Rust lang)
Plug 'lotabout/skim', {'dir': '~/.skim', 'do': './install --bin', 'on': ['SK']}

" Denite
Plug 'Shougo/denite.nvim'   " Multiple helpful functions: open files, search, change folder, etc.

" Other tools
Plug 'bogado/file-line'                 " Open a file on arbitrary line: filename:line
Plug 'AndrewRadev/switch.vim'           " Quickly switch between patterns
Plug 'christoomey/vim-tmux-navigator'   " Navigate between Tmux and Vim splits
Plug 'mtth/scratch.vim'                 " Create scratch buffer for quick notes and todo lists
Plug 'ludovicchabant/vim-gutentags'     " ctags all the way!!!
Plug 'majutsushi/tagbar'                " Inmemory ctags window visualizer
Plug 'terryma/vim-multiple-cursors'     " Multiple cursors like Sublime Text's
Plug 'justinmk/vim-sneak'               " Jump to location specifies by 2 character
Plug 'hauleth/sad.vim'                  " Quick change and replace!
Plug 'matze/vim-move'                   " Easily move blocks of code, no cuting and pasting!!!
Plug 'rizzatti/dash.vim', {'on': ['Dash', 'DashKeywords', '<Plug>DashSearch']}  " Easy documentation with Dash.app (OSX)

" -------------------------------------------------------------------------------------------
" COMPLETION
" -------------------------------------------------------------------------------------------

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }   " Completion
Plug 'Shougo/context_filetype.vim'                              " Filetype context
Plug 'Shougo/neoinclude.vim'                                    " Include completion framework

" Deoplete filetype sources
Plug 'wellle/tmux-complete.vim'                                 " Adjacent tmux panes completion
Plug 'Shougo/neco-vim', {'for': 'vim'}                          " Vim script completion
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }     " Elixir completion
Plug 'fishbullet/deoplete-ruby', {'for': 'ruby'}                " Ruby completion
Plug 'ponko2/deoplete-fish', {'for': 'fish'}                    " Fish shell completion
Plug 'carlitux/deoplete-ternjs', {'do': 'yarn global add tern', 'for': ['javascript', 'vue', 'jsx']}  " Javascript completion
Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go'}          " Golang completion

" Snippets
Plug 'Shougo/neosnippet.vim'        " Snippets support
Plug 'Shougo/neosnippet-snippets'   " Snippets repository
Plug 'Shougo/echodoc.vim'           " Show functions signatures in the command line

" -------------------------------------------------------------------------------------------
" LINTERS
" -------------------------------------------------------------------------------------------

" Main lintting framework
Plug 'w0rp/ale'

" -------------------------------------------------------------------------------------------
" THEMES & UI
" -------------------------------------------------------------------------------------------

" Status line
Plug 'mhartington/oceanic-next'     " Oceanic Next theme
Plug 'vim-airline/vim-airline'      " Airline plugin

call plug#end()
