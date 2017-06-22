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
