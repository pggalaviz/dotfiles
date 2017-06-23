" Shougo/deoplete
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
