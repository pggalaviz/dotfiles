
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
  autocmd BufNewFile,BufRead *.es6,*.jsx setf javascript
  autocmd BufNewFile,BufRead .tern-project setf json
  autocmd BufNewFile,BufRead *.md,*markdown setf markdown
  autocmd BufNewFile,BufRead *.yml setf yaml
  autocmd BufNewFile,BufRead *.eex,*.leex setf eelixir
  autocmd BufNewFile,BufRead *.vue setf vue
  autocmd BufNewFile,BufRead *.toml setf toml
  autocmd BufNewFile,BufRead *.styl setf stylus
  autocmd BufNewFile,BufRead *.graphql,*.gql setf graphql
  autocmd BufRead,BufNewFile .babelrc setf json
  autocmd BufRead,BufNewFile .eslintrc setf json

  autocmd FileType vue syntax sync fromstart
augroup END

" Wrap lines on these file types
augroup filetype_wrap
  autocmd!
  autocmd FileType markdown,html,text setlocal wrap linebreak
augroup END

augroup CSS_syntax
  autocmd!
  autocmd FileType css,scss,sass,stylus,styl setlocal iskeyword+=-
augroup END

" Language specific config
augroup filetype_config
  autocmd!
  " Add a pipe operator with pp
  autocmd FileType elixir iabbrev <buffer> pp \|>
augroup END
