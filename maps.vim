let mapleader=" "

" Config NERDTREE
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <Leader>r :NERDTreeFocus<CR>R<c-w><c-p>

" Save
nnoremap <Leader>w :w<CR>

" Exit
nnoremap <Leader>q :q<CR>

" Split resize
" nnoremap <Leader>> 5<C-w>>
" nnoremap <Leader>< 5<C-w><
nnoremap <S-k> :resize+5<CR>
nnoremap <S-j> :resize-5<CR>
nnoremap <S-h> :vertical resize-5<CR>
nnoremap <S-l> :vertical resize+5<CR>

" New panel (split horizontal)
nnoremap <C-Up> <esc>:sp<CR>

" New panel (split vertical)
nnoremap <C-Down> <esc>:vsp<CR>
