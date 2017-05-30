

"    ___  __________     __          _
"   / _ \/ ___/ ___/__ _/ /__ __  __(_)__
"  / ___/ (_ / (_ / _ `/ / _ `/ |/ / /_ /
" /_/   \___/\___/\_,_/_/\_,_/|___/_//__/


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

" Map vim-plug most used functions
nnoremap <localleader>pu :PlugUpdate<cr>
nnoremap <localleader>pc :PlugClean<cr>
nnoremap <localleader>pi :PlugInstall<cr>

" elzr/vim-json
" ==================================
let g:vim_json_syntax_conceal = 0

" slashmili/alchemist.vim
" ==================================
let g:alchemist_tag_disable = 1 "Use Universal ctags instead

" fatih/vim-go
" ==================================
let g:go_def_mapping_enabled = 0
let g:go_loaded_gosnippets = 1
let g:go_snippet_engine = 'neosnippet'
augroup vim-go
    autocmd!
    autocmd FileType go
                \   nmap <leader>gd <Plug>(go-describe)
                \ | nmap <Leader>gc <Plug>(go-callees)
                \ | nmap <Leader>gC <Plug>(go-callers)
                \ | nmap <Leader>gi <Plug>(go-info)
                \ | nmap <Leader>gm <Plug>(go-implements)
                \ | nmap <Leader>gs <Plug>(go-callstack)
                \ | nmap <Leader>ge <Plug>(go-referrers)
                \ | nmap <Leader>gr <Plug>(go-run)
                \ | nmap <Leader>gb <Plug>(go-build)
                \ | nmap <Leader>gv <Plug>(go-vet)
                \ | nmap <Leader>gt <Plug>(go-test)
                \ | nmap <Leader>gl <Plug>(go-lint)
                \ | nmap <Leader>ga <Plug>(go-alternate-edit)
augroup END

" ditmammoth/doorboy.vim
" ==================================
" Easy jump closings without leaving home row or insert mode
inoremap ii <esc>la

" mattn/emmet-vim
" ==================================
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='º' " Hack gor using 1 key as leader
autocmd FileType html,css,scss,vue,jsx,javascript,javascript.jsx
            \ EmmetInstall
            \ | imap <buffer> <C-Return> <Plug>(emmet-expand-abbr)

" sbdchd/neoformat
" ==================================
noremap <leader>f :Neoformat<cr>
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_enabled_html = ['html-beautify']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_json = ['js-beautify']
let g:neoformat_enabled_go = ['gofmt', 'goimports']
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
let g:indentLine_color_gui = '#65737e'

" AndrewRadev/splitjoin.vim
" ==================================
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
nmap <localleader>j :SplitjoinSplit<CR>
nmap <localleader>k :SplitjoinJoin<CR>

" airblade/vim-gitgutter
" ==================================
let g:gitgutter_map_keys = 0
nmap <leader>g <Plug>GitGutterNextHunk
nmap <leader>G <Plug>GitGutterPrevHunk

" scrooloose/nerdtree
" ==================================
map <leader>n :NERDTreeToggle<cr>
map <leader>b :NERDTreeFind<cr>
let g:NERDTreeShowHidden = 1
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeQuitOnOpen = 1

" lotabout/skim
" ==================================
nnoremap <C-s> :<C-u>SK --color=selected:238,current_match:214<cr>

" Shougo/denite.nvim
" ==================================
nnoremap <localleader>b :Denite buffer<cr>
nnoremap <localleader>f :Denite file_rec<cr>
nnoremap <localleader>g :Denite grep<cr>
nnoremap <localleader>l :Denite line<cr>
nnoremap <localleader>o :Denite outline<cr>
nnoremap <localleader>m :Denite file_mru<cr>
nnoremap <localleader>c :Denite command<cr>
nnoremap <localleader>r :Denite register<cr>
nnoremap <localleader>d :Denite directory_rec -default-action=cd<cr>
nnoremap <localleader>* :DeniteCursorWord line<cr>
nnoremap <localleader>w :DeniteCursorWord grep<cr>
nnoremap <localleader>ch :Denite command_history<cr>
call denite#custom#option('_', 'prompt', '❯')
call denite#custom#option('default', 'vertical_preview', 1)
call denite#custom#option('default', 'short_source_names', 1)
" Custom mappings insert mode
call denite#custom#map('insert', '<C-n>',  '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<c-p>',  '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<up>',   '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', 'jk',     '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('insert', 'kj',     '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('insert', '<esc>',  '<denite:enter_mode:normal>', 'noremap')
" Custom mappings normal mode
call denite#custom#map('normal', '<esc>', '<denite:quit>', 'noremap')
call denite#custom#map('normal', 'st',    '<denite:do_action:tabopen>', 'noremap')
call denite#custom#map('normal', 'ss',    '<denite:do_action:split>', 'noremap')
call denite#custom#map('normal', 'sv',    '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('normal', 'r',     '<denite:redraw>', 'noremap')
" Use RipGrep or The Silver Searcher
if executable('rg')
    " File
    call denite#custom#var('file_rec', 'command', ['rg', '--files', '--glob', '!.git', ''])
    " Grep
    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
elseif executable('ag')
    " File
    call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--color', '--nogroup', '-g', ''])
    " Grep
    call denite#custom#var('grep', 'command', ['ag'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', [])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--smart-case'])
endif

" janko-m/vim-test
" ==================================
let g:test#strategy = "neovim"
nmap <silent> <leader>t :TestSuite<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" AndrewRadev/switch.vim
" ==================================
let g:switch_mapping = ""
noremap <leader>s :Switch<cr>

" christoomey/vim-tmux-navigator
" ==================================
let g:tmux_navigator_no_mappings = 1
noremap <silent> <C-h> :TmuxNavigateLeft<cr>
noremap <silent> <C-j> :TmuxNavigateDown<cr>
noremap <silent> <C-k> :TmuxNavigateUp<cr>
noremap <silent> <C-l> :TmuxNavigateRight<cr>
noremap <silent> <C-p> :TmuxNavigatePrevious<cr>

" ludovicchabant/vim-gutentags
" ==================================
if executable('ctags')
    set statusline+=%{gutentags#statusline('[Generating\ ctags...]')}
    let g:gutentags_cache_dir = '~/.ctags_cache'
    let g:gutentags_generate_on_missing = 1
    let g:gutentags_generate_on_new = 1
    let g:gutentags_ctags_exclude = [
            \".git","node_modules",
            \"log","vendor",
            \"build","dist",
            \"tmp","temp",
            \".min.js","assets"
            \]
    nnoremap <localleader>t :GutentagsUpdate!<cr>
endif

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
" Don't know why alt key is not working without this weird mappings
nmap ¶ <Plug>MoveLineDown
vmap ¶ <Plug>MoveBlockDown
nmap § <Plug>MoveLineUp
vmap § <Plug>MoveBlockUp

" rizzatti/dash.vim
" ==================================
nmap <silent> <C-d> <Plug>DashSearch
"
" airblade/vim-rooter
" ==================================
nnoremap <localleader>cd :Rooter<cr>
let g:rooter_patterns = ['Makefile', 'mix.exs', 'package.json', '*.yml', '*.yaml', '.git', '.git/', 'node_modules/', '.hg/']
let g:rooter_change_directory_for_non_project_files = 'current'

" Shougo/deoplete-go
" ==================================
let g:deoplete#enable_at_startup = 1
let g:deoplete#skip_chars = ['(', ')', '<', '>']
let g:deoplete#tag#cache_limit_size = 800000
" Omni patterns
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.html = '<[^>]*'
" Omni input patterns
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.html = '<[^>]*'
let g:deoplete#omni#input_patterns.md = '<[^>]*'
let g:deoplete#omni#input_patterns.css    = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni#input_patterns.scss   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni#input_patterns.sass   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni#input_patterns.stylus = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni#input_patterns.javascript = ''
let g:deoplete#omni#input_patterns.ruby = ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::']
" Omni functions
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.css = 'csscomplete#CompleteCSS'
let g:deoplete#omni#functions.html = 'htmlcomplete#CompleteTags'
let g:deoplete#omni#functions.javascript = [ 'tern#Complete', 'jspc#omni', 'javascriptcomplete#CompleteJS' ]
let g:deoplete#omni#functions.ruby = 'rubycomplete#Complete'
" Custom Marks
call deoplete#custom#set('buffer',        'mark', 'ℬ')
call deoplete#custom#set('tag',           'mark', '⌦')
call deoplete#custom#set('omni',          'mark', '⌾')
call deoplete#custom#set('ternjs',        'mark', '⌁')
call deoplete#custom#set('vim',           'mark', '⌁')
call deoplete#custom#set('neosnippet',    'mark', '⌘')
call deoplete#custom#set('around',        'mark', '~')
call deoplete#custom#set('syntax',        'mark', '♯')
call deoplete#custom#set('tmux-complete', 'mark', '⊶')
" Default rank is 100, higher is better
call deoplete#custom#set('vim',           'rank', 630)
call deoplete#custom#set('ternjs',        'rank', 620)
call deoplete#custom#set('omni',          'rank', 600)
call deoplete#custom#set('neosnippet',    'rank', 510)
call deoplete#custom#set('member',        'rank', 500)
call deoplete#custom#set('file_include',  'rank', 420)
call deoplete#custom#set('file',          'rank', 410)
call deoplete#custom#set('tag',           'rank', 400)
call deoplete#custom#set('around',        'rank', 330)
call deoplete#custom#set('buffer',        'rank', 320)
call deoplete#custom#set('dictionary',    'rank', 310)
call deoplete#custom#set('tmux-complete', 'rank', 300)
call deoplete#custom#set('syntax',        'rank', 200)
" Custom sorters, working well with neosnippet
call deoplete#custom#set('_', 'converters', [
    \ 'converter_auto_paren',
    \ 'converter_remove_overlap',
    \ 'converter_truncate_abbr',
    \ 'converter_truncate_menu',
    \ 'converter_auto_delimiter',
    \ ])

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
let g:ale_warn_about_trailing_whitespace = 1
let g:ale_linters = {
\   'javascript': ['standard', 'eslint'],
\}

augroup ale_lint
    autocmd!
    autocmd InsertLeave * call ale#Queue(0)
    autocmd ColorScheme * hi ALEErrorSign guibg=#ec5f67
    autocmd ColorScheme * hi ALEWarningSign guifg=#fac863
augroup END
" If 'standard.js' linter is present autoformat with:
if executable('standard')
    autocmd BufWritePost *.js silent !standard --fix %
endif

" vim-airline/vim-airline
" ==================================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_format = '%s '
let g:airline#extensions#tabline#buffer_nr_show = 1
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
