
" -------------------------------------------------------------------------------------------
"  PLUGINS
" -------------------------------------------------------------------------------------------

" Main autocomands
augroup main_autocmds
    autocmd!
    autocmd CompleteDone * pclose
    autocmd VimResized * wincmd =
augroup END

" Use a tab spacing of four spaces for these file types
augroup filetype_tabs
    autocmd!
    autocmd FileType go setlocal shiftwidth=4 softtabstop=4 tabstop=4
augroup END

" Autodetect some filetypes
augroup filetype_detect
    autocmd!
    autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
    autocmd BufNewFile,BufRead .nginx.conf*,nginx.conf*,*/nginx/* setf nginx
    autocmd BufNewFile,BufRead Procfile,config.ru,Rakefile,Gemfile,rdoc setf ruby
    autocmd BufNewFile,BufRead *.es6 setf javascript
    autocmd BufNewFile,BufRead .tern-project setf json
    autocmd BufNewFile,BufRead *.md,*markdown setf markdown
    autocmd BufNewFile,BufRead *.yml setf yaml
    autocmd BufNewFile,BufRead *.eex setf eelixir
    autocmd BufNewFile,BufRead *.vue setf vue

    autocmd FileType vue syntax sync fromstart
augroup END

" Wrap lines on these file types
augroup filetype_wrap
    autocmd!
    autocmd FileType markdown setlocal wrap linebreak
    autocmd FileType html setlocal wrap linebreak
    autocmd FileType text setlocal wrap linebreak
augroup END

augroup CSS_syntax
    autocmd!
    autocmd FileType css,scss,sass,stylus,styl setlocal iskeyword+=-
augroup END

