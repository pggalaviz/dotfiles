" w0rp/ale
" ==================================
let g:ale_enabled = 1
let g:ale_completion_enabled = 1
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
let g:ale_fix_on_save = 1

augroup ale_lint
  autocmd!
  autocmd InsertLeave * call ale#Queue(0)
  autocmd ColorScheme * hi ALEErrorSign guifg=#ec5f67
  autocmd ColorScheme * hi ALEWarningSign guifg=#fac863
augroup END

let g:ale_linters = {
\ 'javascript': ['standard', 'eslint'],
\ 'elixir': ['credo', 'dialyxir', 'elixir-ls'],
\ 'rust': ['rls', 'cargo'],
\ 'go': ['gofmt']
\}

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['standard'],
\ 'css': ['prettier'],
\ 'elixir': [],
\}

" ---------------
" ===> Javascript
" ---------------

" If 'standard.js' linter is present autoformat with it and add babel-eslint for
" ES2016+ support. Must have enlint and babel-eslint globally installed too.
if executable('standard')
  autocmd BufWritePost *.js silent !standard --fix %
  " call ale#Set('javascript_standard_options', '--parser=babel-eslint')
endif

" -----------
" ===> Elixir
" -----------
let g:ale_elixir_elixir_ls_release = '~/.lsp/elixir/rel'
let g:ale_elixir_credo_use_global = 0

" Find the nearest .formatter.exs file to load configuration
" function! LoadNearestFormatter()
"   let l:formatters = []
"   let l:directory = fnameescape(expand("%:p:h"))

"   for l:fmt in findfile(".formatter.exs", l:directory . ";", -1)
"     call insert(l:formatters, l:fmt)
"   endfor

"   call reverse(l:formatters)

"   let g:ale_fixers['elixir'] = g:ale_fixers['elixir'] + ['mix_format']

"   if len(l:formatters) > 0
"     let g:ale_elixir_mix_format_options = "--dot-formatter " . l:formatters[0]
"   endif
" endfunction

" call LoadNearestFormatter()

" ---------
" ===> Rust
" ---------
if executable('rls')
  let g:ale_rust_rls_toolchain = 'nightly'
endif
