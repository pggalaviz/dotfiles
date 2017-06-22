" ludovicchabant/vim-gutentags
" ==================================
if executable('ctags')
    set statusline+=%{gutentags#statusline('[Generating\ ctags...]')}
    let g:gutentags_cache_dir = '~/.ctags_cache'
    let g:gutentags_generate_on_missing = 1
    let g:gutentags_generate_on_new = 1
    let g:gutentags_ctags_exclude = [
            \".git","node_modules",
            \"log","vendor",
            \"build","dist",
            \"tmp","temp",
            \".min.js","assets"
            \]
    nnoremap <localleader>t :GutentagsUpdate!<cr>
endif
