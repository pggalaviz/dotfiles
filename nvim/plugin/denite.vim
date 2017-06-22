" Shougo/denite.nvim
" ==================================
nnoremap <localleader>b :Denite buffer<cr>
nnoremap <localleader>f :Denite file_rec<cr>
nnoremap <localleader>g :Denite grep<cr>
nnoremap <localleader>l :Denite line<cr>
nnoremap <localleader>o :Denite outline<cr>
nnoremap <localleader>m :Denite file_mru<cr>
nnoremap <localleader>c :Denite command<cr>
nnoremap <localleader>r :Denite register<cr>
nnoremap <localleader>d :Denite directory_rec -default-action=cd<cr>
nnoremap <localleader>* :DeniteCursorWord line<cr>
nnoremap <localleader>w :DeniteCursorWord grep<cr>
nnoremap <localleader>ch :Denite command_history<cr>
call denite#custom#option('_', 'prompt', '❯')
call denite#custom#option('default', 'vertical_preview', 1)
call denite#custom#option('default', 'short_source_names', 1)
" Custom mappings insert mode
call denite#custom#map('insert', '<C-n>',  '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<c-p>',  '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<up>',   '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', 'jk',     '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('insert', 'kj',     '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('insert', '<esc>',  '<denite:enter_mode:normal>', 'noremap')
" Custom mappings normal mode
call denite#custom#map('normal', '<esc>', '<denite:quit>', 'noremap')
call denite#custom#map('normal', 'st',    '<denite:do_action:tabopen>', 'noremap')
call denite#custom#map('normal', 'ss',    '<denite:do_action:split>', 'noremap')
call denite#custom#map('normal', 'sv',    '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('normal', 'r',     '<denite:redraw>', 'noremap')
" Use RipGrep or The Silver Searcher
if executable('rg')
    " File
    call denite#custom#var('file_rec', 'command', ['rg', '--threads', '2', '--files', '--glob', '!.git'])
    " Grep
    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
elseif executable('ag')
    " File
    call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--color', '--nogroup', '-g', ''])
    " Grep
    call denite#custom#var('grep', 'command', ['ag'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', [])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--smart-case'])
endif
