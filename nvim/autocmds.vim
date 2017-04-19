
" -------------------------------------------------------------------------------------------
"  PLUGINS
" -------------------------------------------------------------------------------------------

" Use a tab spacing of two spaces for these file types
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType elixir setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2

" Autodetect tmux and nginx filetypes
augroup filetypedetect
  autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
  autocmd BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
augroup END
