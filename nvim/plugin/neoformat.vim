" sbdchd/neoformat
" ==================================
noremap <leader>f :Neoformat<cr>
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_enabled_javascript = ['standard']
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_scss = ['prettier']
let g:neoformat_enabled_elixir = ['mixformat']
let g:neoformat_enabled_rust = ['rustfmt']
let g:neoformat_enabled_go = ['gofmt']
