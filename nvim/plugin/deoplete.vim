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

" Custom sources
call deoplete#custom#option('sources', {
\ '_': ['ale', 'omni', 'neosnippet', 'member', 'include', 'file/include', 'file', 'tag', 'around', 'buffer', 'dictionary', 'tmuxcomplete', 'syntax'],
\ 'elixir': ['LanguageClient', 'alchemist'],
\ 'javascript': ['LanguageClient', 'ternjs'],
\ 'rust': ['LanguageClient', 'racer'],
\ 'go': ['LanguageClient', 'go'],
\ 'ruby': ['LanguageClient', 'ruby'],
\ 'vim': ['vim'],
\ 'fish': ['fish'],
\})


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

call deoplete#custom#source('omni',           'rank', 520)
call deoplete#custom#source('neosnippet',     'rank', 510)
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

" Custom Marks
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

" Custom sorters, working well with neosnippet
" call deoplete#custom#source('_', 'converters', [
"     \ 'converter_auto_paren',
"     \ 'converter_remove_overlap',
"     \ 'converter_truncate_abbr',
"     \ 'converter_truncate_menu',
"     \ 'converter_auto_delimiter',
"     \ ])
