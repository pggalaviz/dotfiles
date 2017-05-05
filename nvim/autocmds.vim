
" -------------------------------------------------------------------------------------------
"  PLUGINS
" -------------------------------------------------------------------------------------------

autocmd CompleteDone * pclose

" Use a tab spacing of two spaces for these file types
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType elixir setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2

" Autodetect some filetypes
augroup filetype_detect
    autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
    autocmd BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
    autocmd BufNewFile,BufRead Procfile,config.ru,Rakefile,Gemfile setf ruby
augroup END

" Wrap lines on these file types


