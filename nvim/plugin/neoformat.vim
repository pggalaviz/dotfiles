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
