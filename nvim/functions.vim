
" -------------------------------------------------------------------------------------------
"  FUNCTIONS
" -------------------------------------------------------------------------------------------

" Deoplete/Neosnippet utility for <Tab>
function! s:tab_deoplete()
    " Completion menu open?
    if pumvisible()
        return "\<c-n>"
    endif
    " Is there a snippet that can be expanded?
    " Is there a placeholder inside snippet to jump to?
    if neosnippet#expandable_or_jumpable() 
        return "\<Plug>(neosnippet_expand_or_jump)"
    endif
    " If none, return regular <Tab>
    return "\<Tab>"
endfunction

imap <silent><expr><TAB> <SID>tab_deoplete()

" -------------------------------------------------------------------------------------------

" Deoplete/Neosnippet utility for <CR>
function! s:cr_deoplete()
    " Completion menu open?
    if pumvisible()
        " Is there a snippet that can be expanded?
        if neosnippet#expandable()
            return "\<Plug>(neosnippet_expand)"
        endif
        " If no snippet close popup with selection
        return deoplete#close_popup()
    endif
    " Else, map to doorboy for correct usage 
    return doorboy#map_cr()
endfunction

imap <silent><expr><CR> <SID>cr_deoplete()

" -------------------------------------------------------------------------------------------

" Add semicolon to at the end of a line
function! AddSemicolon()
    execute "normal! mqA;\<esc>`q"
endfunction

nmap <leader>as :call AddSemicolon()<cr>

" -------------------------------------------------------------------------------------------

" Deactivate Deoplete when Multiple Cursors are enabled
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 2 
endfunction
function! Multiple_cursors_after() abort
    let b:deoplete_disable_auto_complete = 0
endfunction


