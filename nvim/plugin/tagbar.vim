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

" Support for css
let g:tagbar_type_css = {
\ 'ctagstype' : 'css',
  \ 'kinds'     : [
    \ 'c:classes',
    \ 's:selectors',
    \ 'i:identities'
  \ ]
\ }

" Support for rust
let g:tagbar_type_rust = {
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
    \'T:types,type definitions',
    \'f:functions,function definitions',
    \'g:enum,enumeration names',
    \'s:structure names',
    \'m:modules,module names',
    \'c:consts,static constants',
    \'t:traits',
    \'i:impls,trait implementations',
  \ ]
\ }
