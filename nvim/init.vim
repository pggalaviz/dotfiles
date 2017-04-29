scriptencoding utf-8
set encoding=utf-8

" Use full Vim features
set nocompatible    " Important
filetype off        " Imporant

" Config file path
let g:config_path = "~/.config/nvim/"

" Function for sourcing config modules
function! ConfigInc(module)
    execute 'source ' . fnameescape(g:config_path) . fnameescape(a:module)
endfunction

" Python 3 is needed for some plugins to work
let g:python3_host_prog = '/usr/local/bin/python3'

set termguicolors

" -------------------------------------------------------------------------------------------
"  SETTINGS
" -------------------------------------------------------------------------------------------

call ConfigInc('settings.vim')

" -------------------------------------------------------------------------------------------
"  PLUGINS
" -------------------------------------------------------------------------------------------

call ConfigInc('plugins.vim')

" Map vim-plug functions
nnoremap <C-i> :PlugInstall<cr>
nnoremap <C-u> :PlugUpdate<cr>
nnoremap <C-c> :PlugClean<cr>

" elzr/vim-json
let g:vim_json_syntax_conceal = 0

" slashmili/alchemist.vim
let g:alchemist_tag_disable = 1 "Use Universal ctags instead

" mattn/emmet-vim
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,vue EmmetInstall
let g:user_emmet_leader_key='º' " Hack gor using 1 key as leader

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

" airblade/git-gutter
let g:gitgutter_map_keys = 0

" scrooloose/nerdtree
map <leader>n :NERDTreeToggle<cr>   " Open/Close NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeQuitOnOpen = 1

" Shougo/denite.nvim
noremap <leader>b :Denite buffer<cr>
noremap <leader>p :Denite file_rec<cr>
call denite#custom#option('default', 'prompt', '❯')
call denite#custom#map(
    \ 'insert',
    \ '<C-n>',
    \ '<denite:move_to_next_line>',
    \ 'noremap'
    \)
call denite#custom#map(
    \ 'insert',
    \ '<C-p>',
    \ '<denite:move_to_previous_line>',
    \ 'noremap'
    \)

" AndrewRadev/switch.vim
noremap <leader>s :Switch<cr> 

" christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
noremap <silent> <BS> :TmuxNavigateLeft<cr>
noremap <silent> <C-j> :TmuxNavigateDown<cr>
noremap <silent> <C-k> :TmuxNavigateUp<cr>
noremap <silent> <C-l> :TmuxNavigateRight<cr>
noremap <silent> <C-p> :TmuxNavigatePrevious<cr>

" ludovicchabant/vim-gutentags
let g:gutentags_cache_dir = '~/.ctags_cache'
set statusline+=%{gutentags#statusline('[Generating\ ctags...]')}

" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1

" wellle/tmux-complete.vim
let g:tmuxcomplete#trigger = ''

" carlitux/deoplete-ternjs
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 1

" zchee/deoplete-go
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

" Shougo/neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" Shougo/echodoc.vim
let g:echodoc_enable_at_startup= 1

" w0rp/ale
let g:ale_lint_delay = 3000
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \}

" vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_enable_branch = 1
let g:airline_branch_prefix = '⎇ '
let g:airline_skip_empty_sections = 1
let g:airline_theme='oceanicnext'
let g:airline#extensions#ale#enabled = 1

" Load these after plugins, it's important
filetype plugin indent on                       " Enable full filetype detection
syntax on                                       " Syntax highlighting on
syntax enable                                   " Syntax highlighting on

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

"----------------------------------------------------------------------------------------------
" THEMES / COLORS / UI
"----------------------------------------------------------------------------------------------

colorscheme OceanicNext




