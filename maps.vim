let mapleader=" "

" Config NERDTREE
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

" Maps for move line up or down
" NORMAL mode
nnoremap <silent> <A-Down> :m .+1<CR>==
nnoremap <silent> <A-Up> :m .-2<CR>==
" INSERT mode
inoremap <silent> <A-Down> <Esc>:m .+1<CR>==gi
inoremap <silent> <A-Up> <Esc>:m .-2<CR>==gi
" VISUAL mode
vnoremap <silent> <A-Down> :m '>+1<CR>gv=gv
vnoremap <silent> <A-Up> :m '<-2<CR>gv=gv

" Clipboard Copy
vnoremap <C-c> "*y<CR>

" Clipboard Copy
nnoremap <C-v> "*p<CR>

" Telescope (find files)
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Duplicate line
" nnoremap <C-S-a> :t.<CR>
