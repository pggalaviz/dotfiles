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
Plug 'othree/yajs.vim'   " Javascript syntax 
Plug 'othree/jspc.vim'   " Javascript parameter completion
Plug 'moll/vim-node'     " Node tools

" Json
Plug 'elzr/vim-json', {'for': 'json'}    " JSON highlighting

" Vue
Plug 'posva/vim-vue', {'for': 'vue'}  " Vue.js syntax highlighting

" CSS & STYLING
Plug 'hail2u/vim-css3-syntax', {'for': ['css','scss', 'vue']}       " CSS and SCSS syntax & highlighting
Plug 'wavded/vim-stylus', { 'for': ['stylus', 'vue']}               " Stylus syntax & highlighting
Plug 'ap/vim-css-color', {'for':['css', 'scss', 'stylus', 'vue']}   " Show colors on CSS files

" ELIXIR
Plug 'elixir-lang/vim-elixir'   " Elixir language highlightning
Plug 'slashmili/alchemist.vim'  " Elixir Integration

" TOOLS
Plug 'tmux-plugins/vim-tmux'            " Tmux file highlighting
Plug 'dag/vim-fish', {'for': 'fish'}    " Fish shell highlighting

" -------------------------------------------------------------------------------------------
" UTILITIES
" -------------------------------------------------------------------------------------------

" Delimiters
Plug 'itmammoth/doorboy.vim'        " Auto close brackets, quotations, etc.
Plug 'tpope/vim-surround'           " Easily change surroundings (parenthesis, brackets, etc)

" Comments
Plug 'tomtom/tcomment_vim'          " Easily comment/uncomment words, lines or group of lines

Plug 'mattn/emmet-vim', {'for': ['html', 'vue']}    " Easy workflow for html & CSS

" Format/Indentation
Plug 'sbdchd/neoformat'             " Format code
Plug 'junegunn/vim-easy-align'      " Easy alignement
Plug 'Yggdroot/indentLine'          " Show a line to display indentation level

" Git
Plug 'lambdalisue/gina.vim'         " Control GIT repos from nvim session
Plug 'airblade/vim-gitgutter'       " Show GIT changes status in the gutter
Plug 'jreybert/vimagit'             " Easier GIT workflow

" Nerdtree
Plug 'scrooloose/nerdtree'          " Directory & files tree
Plug 'Xuyuanp/nerdtree-git-plugin'  " Nerdtree plugin to show GIT flags

" Denite
Plug 'Shougo/denite.nvim'   " Multiple helpful functions: open files, search, change folder, etc.

" Other tools
Plug 'bogado/file-line'             " Open a file on arbitrary line: filename:line
Plug 'AndrewRadev/switch.vim'       " Quickly switch between patterns
Plug 'christoomey/vim-tmux-navigator'   " Navigate between Tmux and Vim splits

" -------------------------------------------------------------------------------------------
" COMPLETION
" -------------------------------------------------------------------------------------------

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }   " Completion
Plug 'Shougo/context_filetype.vim'                              " Filetype context

" Deoplete filetype sources
Plug 'Shougo/neco-vim', {'for': 'vim'}                          " Vim script completion
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }     " Elixir completion
Plug 'fishbullet/deoplete-ruby', {'for': 'ruby'}                " Ruby completion
Plug 'ponko2/deoplete-fish', {'for': 'fish'}                    " Fish shell completion

" Snippets
Plug 'Shougo/neosnippet.vim'        " Snippets support
Plug 'Shougo/neosnippet-snippets'   " Snippets repository
Plug 'Shougo/echodoc.vim'           " Show functions signatures in the command line

" -------------------------------------------------------------------------------------------
" THEMES & UI
" -------------------------------------------------------------------------------------------

" Status line
Plug 'mhartington/oceanic-next'     " Oceanic Next theme
Plug 'vim-airline/vim-airline'      " Airline plugin

call plug#end()


