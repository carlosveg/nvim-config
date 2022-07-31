let mapleader=" "

" Config NERDTREE
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <Leader>r :NERDTreeFocus<CR>R<c-w><c-p>

" Config NvimTree
nnoremap <C-b> :NvimTreeToggle<CR>

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

" Tabs
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
" nnoremap <C-Left> :tabprevious<CR>
" nnoremap <C-Right> :tabnext<CR>
" nnoremap <silent> <A-Left> :tabm -1<CR>
" nnoremap <silent> <A-Right> :tabm +1<CR>

" Bufferline
" Aqui puedo usar el clasico <S-TAB> para moverme entre tabs
" Pero voy a probar esta config a ver que tal va
nnoremap <silent> <C-Right> :BufferLineCycleNext<CR>
nnoremap <silent> <C-Left>  :BufferLineCyclePrev<CR>
nnoremap <silent> <A-Right> :BufferLineMoveNext<CR>
nnoremap <silent> <A-Left> :BufferLineMovePrev<CR>

" Clipboard Copy
vnoremap <C-c> "*y<CR>

" Clipboard Copy
nnoremap <C-v> "*p<CR>
