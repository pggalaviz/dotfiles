" w0rp/ale
" ==================================
let g:ale_enabled = 1
let g:ale_completion_enabled = 0
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'
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

" Linters
let g:ale_linters = {}
let g:ale_linters.javascript = ['standard', 'eslint']
let g:ale_linters.elixir = ['elixir-ls', 'credo']
let g:ale_linters.ruby = ['rubocop', 'ruby']
let g:ale_linters.rust = ['rls', 'cargo']
let g:ale_linters.go = ['gofmt']
let g:ale_linters.vue = ['vls', 'standard']

" Fixers
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.javascript = ['standard']
let g:ale_fixers.css = ['prettier']
let g:ale_fixers.elixir = ['mix_format']

" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}

nnoremap ]e :ALENextWrap<CR>
nnoremap [e :ALEPreviousWrap<CR>
" nnoremap <leader>d :ALEGoToDefinition<CR>

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
let g:ale_elixir_credo_use_global = 0
let g:ale_elixir_credo_strict = 1
let g:ale_elixir_elixir_ls_release = expand("~/.lsp/elixir/rel")
" Disable dialyzer
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:false}}

" ---------
" ===> Ruby
" ---------
" let g:ale_ruby_rubocop_executable = 'bundle'

" ---------
" ===> Rust
" ---------
if executable('rls')
  let g:ale_rust_rls_toolchain = 'nightly'
endif

" --------
" ===> Vue
" --------
if executable('vls')
  let g:ale_vue_vls_use_global = 1
endif
