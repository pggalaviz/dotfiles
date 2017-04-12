scriptencoding utf-8

" Use full Vim features
if &compatible
  set nocompatible      " Be iMproved
endif

" Config file path
let g:config_path = "~/.config/nvim/"

" Function for sourcing config modules
function! ConfigInc(module)
  execute 'source ' . fnameescape(g:config_path) . fnameescape(a:module)
endfunction

set termguicolors

" -------------------------------------------------------------------------------------------
"  PLUGINS
" -------------------------------------------------------------------------------------------

call ConfigInc('plugins.vim')

" elzr/vim-json
let g:vim_json_syntax_conceal = 0

" mattn/emmet-vim
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall

" sbdchd/neoformat
noremap <leader>f :Neoformat<cr>
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_enabled_html = ['html-beautify']
let g:neoformat_enabled_javascript = ['js-beautify']
let g:neoformat_enabled_json = ['js-beautify']
let g:neoformat_enabled_go = ['goimports']
let g:neoformat_enabled_css = ['css-beautify']
let g:neoformat_enabled_ruby = ['ruby-beautify']
let g:neoformat_enabled_scss = ['sass-convert']

" junegunn/vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Yggdroot/indentLine
let g:indentLine_setColors = 0
let g:indentLine_char = '┆'
let g:indentLine_color_gui = '#74818b'
let g:table_mode_corner="|"

" scrooloose/nerdtree
map <c-n> :NERDTreeToggle<cr>   " Open/Close NERDTree
let NERDTreeShowHidden = 1

" christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <BS> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-ñ> :TmuxNavigatePrevious<cr>    

" Shougo/denite.nvim


" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1

" Shougo/echodoc.vim
let g:echodoc_enable_at_startup= 1

" vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_enable_branch = 1
let g:airline_branch_prefix = '⎇ '
let g:airline_skip_empty_sections = 1
let g:airline_theme='oceanicnext'

" -------------------------------------------------------------------------------------------
"  FUNCTIONS
" -------------------------------------------------------------------------------------------

call ConfigInc('functions.vim')

" -------------------------------------------------------------------------------------------
"  AUTOCOMMANDS
" -------------------------------------------------------------------------------------------

call ConfigInc('autocmds.vim')

"----------------------------------------------------------------------------------------------
" KEYBINDINGS
"----------------------------------------------------------------------------------------------

call ConfigInc('keybindings.vim')

" -------------------------------------------------------------------------------------------
"  SETTINGS
" -------------------------------------------------------------------------------------------

call ConfigInc('settings.vim')

"----------------------------------------------------------------------------------------------
" THEMES / COLORS / UI
"----------------------------------------------------------------------------------------------

colorscheme OceanicNext




