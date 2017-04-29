
"----------------------------------------------------------------------------------------------
" KEYBINDINGS
"----------------------------------------------------------------------------------------------

" Navigation
noremap H ^
noremap L g_
noremap J 5j
noremap K 5k
" Make cursor move by visual lines instead of file lines (when wrapping)
noremap k gk
noremap j gj

" Buffer Navigation
nnoremap <leader>. :bn!<cr>
nnoremap <leader>, :bp!<cr>
nnoremap <leader>d :bd<cr>
nnoremap <leader>- :enew<cr>

" I have a Spanish lang keyboard, so no need of '<shift>.' for ':'
noremap . :

" upper/lower word
nnoremap <leader>u mQviwU`Q
nnoremap <leader>l mQviwu`Q

" upper/lower first char of word
nnoremap <leader>U mQgewvU`Q
nnoremap <leader>L mQgewvu`Q

" Easy save & quit
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>x :wq<cr>

" Make :Q and :W work like :q and :w
command! W w
command! Q q

" Insert blank line in normal mode
nnoremap <leader><cr> o<esc>
nnoremap <leader><bs> O<esc>

" NO ARROW KEYS COME ON!!!
noremap <Left>  :echo "no! use h"<cr>
noremap <Right> :echo "no! use l"<cr>
noremap <Up>    :echo "no! use k"<cr>
noremap <Down>  :echo "no! use j"<cr>

" Change the Current working dir to where the current file is located
nnoremap <silent> <Leader>cd :cd %:p:h<CR>:pwd<CR>

" No Ex mode
nnoremap Q <nop>

" Clear the search buffer when hitting ESC
map <silent> <esc> :nohlsearch<cr>

" Select pasted text to work with it or select all if not pasted text
noremap <leader>v `[v`]

" Keep block selected after indenting 
xnoremap > >gv|
xnoremap < <gv

" Use <Tab> for indenting in visual mode
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv

" Use '<' and '>' for indenting in normal mode
nnoremap > >>_
nnoremap < <<_

" ESC from insert mode
imap jk <Esc>

" Switch between the last two files
noremap <leader>m <c-^>

" Reload & easy edit Neovim configuration
nnoremap <leader>r :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>e :e ~/.config/nvim/init.vim<cr>

" Open a terminal buffer
nnoremap <leader>t :terminal<cr>

" Enter normal mode in terminal buffer
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>. <c-\><c-n>:bn<cr>
tnoremap <leader>, <c-\><c-n>:bp<cr>

" Easy exit terminal buffer
tmap <leader>d <c-\><c-n>:bd!<cr>
