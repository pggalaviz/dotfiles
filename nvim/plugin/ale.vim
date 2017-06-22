" w0rp/ale
" ==================================
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

let g:ale_linters = {
\   'javascript': ['standard', 'eslint'],
\}

augroup ale_lint
  autocmd!
  autocmd InsertLeave * call ale#Queue(0)
  autocmd ColorScheme * hi ALEErrorSign guifg=#ec5f67
  autocmd ColorScheme * hi ALEWarningSign guifg=#fac863
augroup END
" If 'standard.js' linter is present autoformat with:
if executable('standard')
  autocmd BufWritePost *.js silent !standard --fix %
endif
