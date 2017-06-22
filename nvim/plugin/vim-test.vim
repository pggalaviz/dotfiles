" janko-m/vim-test
" ==================================
let g:test#strategy = "neovim"
nmap <silent> <leader>t :TestSuite<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>
