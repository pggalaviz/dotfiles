" Shougo/deoplete
" ==================================
let g:deoplete#enable_at_startup = 1
let g:deoplete#tag#cache_limit_size = 800000

call deoplete#custom#option('num_processes', 4)

call deoplete#custom#option({
\ 'auto_complete_delay': 0,
\ 'smart_case': v:true,
\ 'skip_chars': ['(', ')', '<', '>']
\})

" Omni patterns
call deoplete#custom#option('omni_patterns', {
\ 'html': '<[^>]*',
\ 'css': '',
\ 'scss': ''
\})

" Omni input functions
call deoplete#custom#source('omni', 'functions', {
\ 'javascript': ['tern#Complete', 'jspc#omni'],
\ 'css': ['csscomplete#CompleteCSS'],
\ 'html': ['htmlcomplete#CompleteTags']
\})

" Omni input patterns
call deoplete#custom#var('omni', 'input_patterns', {
  \ 'html': '<[^>]*',
  \ 'md': '<[^>]*',
  \ 'css'   : '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]',
  \ 'scss'  : '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]',
  \ 'sass'  : '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]',
  \ 'stylus': '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]',
  \ 'javascript': '',
  \ 'ruby': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::']
\})

" Custom sources {{{

" Default rank is 100, higher is better
call deoplete#custom#source('LanguageClient', 'rank', 610)
call deoplete#custom#source('ale', 'rank', 610)
" Elixir
call deoplete#custom#source('alchemist', 'rank', 600)
call deoplete#custom#source('alchemist', 'filetypes', ['elixir', 'eelixir'])
" Javascript
call deoplete#custom#source('ternjs', 'rank', 600)
call deoplete#custom#source('ternjs', 'filetypes', ['javascript', 'vue', 'jsx' ])
" Rust
call deoplete#custom#source('racer', 'rank', 600)
call deoplete#custom#source('racer', 'filetypes', ['rust'])
" Golang
call deoplete#custom#source('go', 'rank', 600)
call deoplete#custom#source('go', 'filetypes', ['go'])
" Ruby
call deoplete#custom#source('ruby', 'rank', 600)
call deoplete#custom#source('ruby', 'filetypes', ['ruby'])
" Vim
call deoplete#custom#source('vim', 'rank', 600)
call deoplete#custom#source('vim', 'filetypes', ['vim'])
" Fish
call deoplete#custom#source('fish', 'rank', 600)
call deoplete#custom#source('fish', 'filetypes', ['fish'])

call deoplete#custom#source('neosnippet',     'rank', 520)
call deoplete#custom#source('omni',           'rank', 510)
call deoplete#custom#source('member',         'rank', 500)
call deoplete#custom#source('include',        'rank', 430)
call deoplete#custom#source('file/include',   'rank', 420)
call deoplete#custom#source('file',           'rank', 410)
call deoplete#custom#source('tag',            'rank', 400)
call deoplete#custom#source('around',         'rank', 330)
call deoplete#custom#source('buffer',         'rank', 320)
call deoplete#custom#source('dictionary',     'rank', 310)
call deoplete#custom#source('tmuxcomplete',   'rank', 300)
call deoplete#custom#source('syntax',         'rank', 200)

" }}}

" Custom Marks {{{
call deoplete#custom#source('LanguageClient', 'mark', '*')
call deoplete#custom#source('ale',            'mark', 'A')
call deoplete#custom#source('alchemist',      'mark', '⌁')
call deoplete#custom#source('ternjs',         'mark', '⌁')
call deoplete#custom#source('racer',          'mark', '⌁')
call deoplete#custom#source('vim',            'mark', '⌁')
call deoplete#custom#source('go',             'mark', '⌁')
call deoplete#custom#source('ruby',           'mark', '⌁')
call deoplete#custom#source('omni',           'mark', '⌾')
call deoplete#custom#source('neosnippet',     'mark', '⌘')
call deoplete#custom#source('member',         'mark', '.')
call deoplete#custom#source('include',        'mark', 'i')
call deoplete#custom#source('file/include',   'mark', 'i')
call deoplete#custom#source('file',           'mark', 'f')
call deoplete#custom#source('tag',            'mark', '⌦')
call deoplete#custom#source('around',         'mark', '↻')
call deoplete#custom#source('buffer',         'mark', 'ℬ')
call deoplete#custom#source('dictionary',     'mark', 'd')
call deoplete#custom#source('tmuxcomplete',   'mark', '⊶')
call deoplete#custom#source('syntax',         'mark', '♯')

" }}}

" Custom sorters, working well with neosnippet
" call deoplete#custom#source('_', 'converters', [
"     \ 'converter_auto_paren',
"     \ 'converter_remove_overlap',
"     \ 'converter_truncate_abbr',
"     \ 'converter_truncate_menu',
"     \ 'converter_auto_delimiter',
"     \ ])
