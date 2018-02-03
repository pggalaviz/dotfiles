" majutsushi/tagbar
" ==================================
nnoremap <F6> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

" Support for elixir
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

" support for typescript
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }
