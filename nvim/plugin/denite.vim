" Shougo/denite.nvim
" ==================================

" Custom Mappings
autocmd FileType denite call s:denite_settings()

function! s:denite_settings() abort
  nnoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> p
        \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> y
        \ denite#do_map('do_action', 'yank')
  nnoremap <silent><buffer><expr> <Esc>
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> q
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
        \ denite#do_map('open_filter_buffer')
endfunction

autocmd FileType denite-filter call s:denite_filter_settings()

function! s:denite_filter_settings() abort
  imap <silent><buffer> kj
        \ <Plug>(denite_filter_quit)
  imap <silent><buffer> jk
        \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
        \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
endfunction

nnoremap <localleader>b :Denite buffer file/old -default-action=switch<cr>
nnoremap <localleader>f :<C-u>DeniteProjectDir file/rec -start-filter<cr>
nnoremap <localleader>s :<C-u>DeniteProjectDir -start-filter grep:::!<CR>
nnoremap <localleader>g :<C-u>DeniteProjectDir -start-filter grep:::!<CR>
nnoremap <localleader>l :Denite line -start-filter<cr>
nnoremap <localleader>o :Denite outline<cr>
nnoremap <localleader>m :Denite file_mru<cr>
nnoremap <localleader>r :Denite register:. -buffer-name=register<cr>
xnoremap <localleader>r :Denite register -buffer-name=register -default-action=replace<cr>
nnoremap <localleader>d :Denite directory_rec -default-action=cd<cr>
nnoremap <localleader>c :Denite command_history<cr>
nnoremap <localleader>* :DeniteCursorWord line<cr>
nnoremap <localleader>w :<C-u>DeniteCursorWord grep:.<cr>

call denite#custom#option('_', 'statusline', v:false)
call denite#custom#option('_', 'max_dynamic_update_candidates', 100000)
call denite#custom#option('default', 'prompt', '❯')
call denite#custom#option('default', 'vertical_preview', 1)
call denite#custom#option('default', 'short_source_names', 1)

" Grep interactive mode by default
call denite#custom#source('grep', 'args', ['', '', '!'])

" Use RipGrep or The Silver Searcher
if executable('rg')
    " File
    call denite#custom#var('file/rec', 'command', ['rg', '--threads', '2', '--files', '--glob', '!.git'])
    " Grep
    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--smart-case'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
elseif executable('ag')
    " File
    call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--color', '--nogroup', '-g', ''])
    " Grep
    call denite#custom#var('grep', 'command', ['ag'])
    call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--smart-case'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', [])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
endif
