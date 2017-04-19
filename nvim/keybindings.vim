
"----------------------------------------------------------------------------------------------
" KEYBINDINGS
"----------------------------------------------------------------------------------------------

" Navigation
noremap H ^
noremap L g_
noremap J 5j
noremap K 5k

" Buffer Navigation
noremap <leader>l :bn!<cr>
noremap <leader>h :bp!<cr>
noremap <leader>d :bd<cr>

" I have a Spanish lang keyboard, so no need of '<shift>.' for ':'
noremap . :

" Easy save & quit
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>x :wq<cr>

" NO ARROW KEYS COME ON!!!
noremap <Left>  :echo "no! use h"<cr>
noremap <Right> :echo "no! use l"<cr>
noremap <Up>    :echo "no! use k"<cr>
noremap <Down>  :echo "no! use j"<cr>

" No Ex mode
nnoremap Q <nop>

" Clear the search buffer when hitting ESC
map <silent> <esc> :nohlsearch<cr>

" Select pasted text, this allows to indent after pasting or others
noremap gV `[v`]

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" ESC from insert mode
imap jk <Esc>

" Switch between the last two files
nnoremap <leader>m <c-^>

" Reload configuration
map <leader>r :source %<cr>

