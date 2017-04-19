
"----------------------------------------------------------------------------------------------
" KEYBINDINGS
"----------------------------------------------------------------------------------------------

" Navigation
noremap H ^
noremap L g_
noremap J 5j
noremap K 5k

" Buffer Navigation
nnoremap <leader>. :bn!<cr>
nnoremap <leader>, :bp!<cr>
nnoremap <leader>d :bd<cr>

" I have a Spanish lang keyboard, so no need of '<shift>.' for ':'
noremap . :

" Easy save & quit
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>x :wq<cr>

" NO ARROW KEYS COME ON!!!
noremap <Left>  :echo "no! use h"<cr>
noremap <Right> :echo "no! use l"<cr>
noremap <Up>    :echo "no! use k"<cr>
noremap <Down>  :echo "no! use j"<cr>

" Change the Current working dir to where the current file is located
nnoremap <silent> <Leader>cd :cd %:p:h<CR>

" No Ex mode
nnoremap Q <nop>

" Clear the search buffer when hitting ESC
map <silent> <esc> :nohlsearch<cr>

" Select pasted text to work with it or select all if not pasted text
noremap <leader>v `[v`]

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" ESC from insert mode
imap jk <Esc>

" Switch between the last two files
noremap <leader>m <c-^>

" Reload configuration
map <leader>r :source %<cr>

" Open a terminal buffer
nnoremap <leader>t :terminal<cr>

" Enter normal mode in terminal buffer
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>. <c-\><c-n>:bn<cr>
tnoremap <leader>, <c-\><c-n>:bp<cr>

" Easy exit terminal buffer
tmap <leader>d <c-\><c-n>:bd!<cr>
