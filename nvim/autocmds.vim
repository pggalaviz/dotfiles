
" -------------------------------------------------------------------------------------------
"  PLUGINS
" -------------------------------------------------------------------------------------------

" Main autocomands
augroup main_autocmds
    autocmd!
    autocmd CompleteDone * pclose
augroup END

" Use a tab spacing of two spaces for these file types
augroup filetype_tabs
    autocmd!
    autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd FileType elixir setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
augroup END

" Autodetect some filetypes
augroup filetype_detect
    autocmd!
    autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
    autocmd BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
    autocmd BufNewFile,BufRead Procfile,config.ru,Rakefile,Gemfile setf ruby
    autocmd BufNewFile,BufRead *.es6 setf javascript
    autocmd BufNewFile,BufRead .tern-project setf json
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

