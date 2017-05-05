scriptencoding utf-8
set encoding=utf-8

" Use full Vim features
set nocompatible

" Config file path
let g:config_path = "~/.config/nvim/"

" Function for sourcing config modules
function! ConfigInc(module)
    execute 'source ' . fnameescape(g:config_path) . fnameescape(a:module)
endfunction

" Python 3 is needed for some plugins to work
" let g:python3_host_prog = '/usr/local/bin/python3'

set termguicolors
" I like block cursor always blinking
set guicursor=a:block-blinkwait100-blinkoff150-blinkon175

" -------------------------------------------------------------------------------------------
"  SETTINGS
" -------------------------------------------------------------------------------------------

call ConfigInc('settings.vim')

" -------------------------------------------------------------------------------------------
"  PLUGINS
" -------------------------------------------------------------------------------------------

call ConfigInc('plugins.vim')

" Map vim-plug most used functions, not upgrade or install here
nnoremap <C-u> :PlugUpdate<cr>
nnoremap <C-c> :PlugClean<cr>

" elzr/vim-json
" ==================================
let g:vim_json_syntax_conceal = 0

" slashmili/alchemist.vim
" ==================================
let g:alchemist_tag_disable = 1 "Use Universal ctags instead

" ditmammoth/doorboy.vim
" ==================================
" Easy jump closings without leaving home row or insert mode
inoremap ii <esc>$a

" mattn/emmet-vim
" ==================================
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,vue EmmetInstall
let g:user_emmet_leader_key='º' " Hack gor using 1 key as leader

" sbdchd/neoformat
" ==================================
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
" ==================================
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Yggdroot/indentLine
" ==================================
let g:indentLine_setColors = 0
let g:indentLine_char = '┆'
let g:indentLine_color_gui = '#74818b'

" AndrewRadev/splitjoin.vim
" ==================================
nnoremap <silent> gJ :<C-u>SplitjoinJoin<cr>
nnoremap <silent> gS :<C-u>SplitjoinSplit<cr>

" airblade/vim-gitgutter
" ==================================
let g:gitgutter_map_keys = 0

" scrooloose/nerdtree
" ==================================
map <leader>n :NERDTreeToggle<cr>
let g:NERDTreeShowHidden = 1
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeQuitOnOpen = 1

" lotabout/skim
" ==================================
nnoremap <C-s> :<C-u>SK --color=selected:238,current_match:214<cr>

" Shougo/denite.nvim
" ==================================
noremap <leader>b :Denite buffer<cr>
noremap <leader>p :Denite file_rec<cr>
call denite#custom#option('default', 'prompt', '❯')
call denite#custom#option('default', 'vertical_preview', 1)
call denite#custom#option('default', 'short_source_names', 1)
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
if executable('rg')
    " Use RipGrep
    call denite#custom#var('file_rec', 'command', ['rg', '--files', '--glob', '!.git', ''])
    " Grep
    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
endif

" AndrewRadev/switch.vim
" ==================================
noremap <leader>s :Switch<cr>

" christoomey/vim-tmux-navigator
" ==================================
let g:tmux_navigator_no_mappings = 1
noremap <silent> <BS> :TmuxNavigateLeft<cr>
noremap <silent> <C-j> :TmuxNavigateDown<cr>
noremap <silent> <C-k> :TmuxNavigateUp<cr>
noremap <silent> <C-l> :TmuxNavigateRight<cr>
noremap <silent> <C-p> :TmuxNavigatePrevious<cr>

" ludovicchabant/vim-gutentags
" ==================================
set statusline+=%{gutentags#statusline('[Generating\ ctags...]')}
let g:gutentags_cache_dir = '~/.ctags_cache'
let g:gutentags_ctags_exclude = [
            \".git","node_modules",
            \"log","vendor",
            \"build",".vim",
            \"tmp","temp",
            \".min.js","assets",
            \".gbim"
            \]

" majutsushi/tagbar
" ==================================
nnoremap <F6> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_type_elixir = {
            \ 'ctagstype' : 'elixir',
            \ 'kinds' : [
            \ 'f:functions',
            \ 'functions:functions',
            \ 'c:callbacks',
            \ 'd:delegates',
            \ 'e:exceptions',
            \ 'i:implementations',
            \ 'a:macros',
            \ 'o:operators',
            \ 'm:modules',
            \ 'p:protocols',
            \ 'r:records',
            \ 't:tests'
            \ ]
            \ }

" justinmk/sneak
" ==================================
let g:sneak#s_next = 1
let g:sneak#prompt = 'Sneak ❯ '
autocmd ColorScheme * hi Sneak guifg=#1b2b34 guibg=#fac863
" replace 'f' with 1-char Sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
" replace 't' with 1-char Sneak
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

" hauleth/sad.vim
" ==================================
nmap <leader>c <Plug>(sad-change-forward)
vmap <leader>c <Plug>(sad-change-forward)
nmap <leader>C <Plug>(sad-change-backward)
vmap <leader>C <Plug>(sad-change-backward)

" matze/vim-move
" ==================================
" Using a hack here, this rare signs are equal as pressing <ALT-j> and <ALT-k>
" Don't know why it's not working without this mappings
nmap ¶ <Plug>MoveLineDown
vmap ¶ <Plug>MoveBlockDown
nmap § <Plug>MoveLineUp
vmap § <Plug>MoveBlockUp

" rizzatti/dash.vim
" ==================================
nmap <silent> <C-d> <Plug>DashSearch

" Shougo/deoplete-go
" ==================================
let g:deoplete#enable_at_startup = 1

" carlitux/deoplete-ternjs
" ==================================
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 1

" zchee/deoplete-go
" ==================================
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

" Shougo/neosnippet
" ==================================
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" Shougo/echodoc.vim
" ==================================
let g:echodoc#enable_at_startup = 1

" w0rp/ale
" ==================================
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \}

augroup ale_lint
    au!
    au InsertLeave * call ale#Queue(0)
augroup END

" vim-airline/vim-airline
" ==================================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_enable_branch = 1
let g:airline_branch_prefix = '⎇ '
let g:airline_skip_empty_sections = 1
let g:airline_theme='oceanicnext'
let g:airline#extensions#ale#enabled = 1

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
highlight CursorLineNr guifg=#fac863
