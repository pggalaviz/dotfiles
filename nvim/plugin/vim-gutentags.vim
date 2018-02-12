" ludovicchabant/vim-gutentags
" ==================================
if executable('ctags')
    set statusline+=%{gutentags#statusline('[Generating\ ctags...]')}
    let g:gutentags_cache_dir = '~/.ctags_cache'
    let g:gutentags_generate_on_missing = 0
    let g:gutentags_generate_on_new = 1
    let g:gutentags_generate_on_write = 1
    let g:gutentags_add_default_project_roots = 0
    let g:gutentags_project_root = ['.git', '.gitignore', '.babelrc', 'package.json']
    let g:gutentags_ctags_exclude = ['.git', 'node_modules', 'log', 'vendor', 'build', 'dist', 'tmp', 'temp', '.min.js']
    nnoremap <localleader>t :GutentagsUpdate!<cr>
endif
