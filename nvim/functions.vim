
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

