
" -------------------------------------------------------------------------------------------
"  FUNCTIONS
" -------------------------------------------------------------------------------------------

" Deoplete/Neosnippet utility for <Tab> {{{
function! s:tab_deoplete()
    " Completion menu open?
    if pumvisible()
        return "\<c-n>"
    endif
    " Is there a snippet that can be expanded?
    " Is there a placeholder inside snippet to jump to?
    if neosnippet#expandable_or_jumpable()
        return neosnippet#mappings#expand_or_jump_impl()
    endif
    " If none, return regular <Tab>
    return "\<Tab>"
endfunction

inoremap <silent><expr><TAB> <SID>tab_deoplete()

" }}}

" Deoplete/Neosnippet utility for <CR> {{{
function! s:cr_deoplete()
    " Completion menu open?
    if pumvisible()
        " Is there a snippet that can be expanded?
        if neosnippet#expandable()
            return neosnippet#mappings#expand_impl()
        endif
        " If no snippet close popup with selection
        return deoplete#close_popup()
    endif
    " Else, map to doorboy plugin for correct usage
    return doorboy#map_cr()
endfunction

inoremap <silent><expr><CR> <SID>cr_deoplete()

" }}}

" Strip trailing whitespace {{{
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" }}}

" Add semicolon to at the end of a line {{{
function! AddSemicolon()
    execute "normal! mqA;\<esc>`q"
endfunction

nmap <leader>as :call AddSemicolon()<cr>

" }}}

" Select all file to clipboard {{{
function! CopyAll()
    execute "normal! %y<cr>"
endfunction

nmap <leader>y :call CopyAll()<cr>

" }}}

" Deactivate Deoplete when Multiple Cursors are enabled {{{
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 2
endfunction
function! Multiple_cursors_after() abort
    let b:deoplete_disable_auto_complete = 0
endfunction

" }}}

" gj, gk: vertical movement through whitespace {{{
function FloatUp()
  while line(".") > 1 && (strlen(getline(".")) < col(".") || getline(".")[col(".") - 1] =~ '\s')
    norm k
  endwhile
endfunction
function FloatDown()
  while line(".") > 1 && (strlen(getline(".")) < col(".") || getline(".")[col(".") - 1] =~ '\s')
    norm j
  endwhile
endfunction

nnoremap gk :call FloatUp()<CR>
nnoremap gj :call FloatDown()<CR>

" }}}

" Fold text {{{
function! MyFoldText()
  let line = getline(v:foldstart)
  let nucolwidth = &fdc + &number * &numberwidth
  let windowwidth = winwidth(0) - nucolwidth - 3
  let foldedlinecount = v:foldend - v:foldstart

  " expand tabs into spaces
  let onetab = strpart('          ', 0, &tabstop)
  let line = substitute(line, '\t', onetab, 'g')

  let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
  let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 9
  return line . ' …' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines'
endfunction

set foldtext=MyFoldText()

" }}}
