" Setters
set number
set relativenumber
set title
set cursorline
set mouse=a

syntax on


" Color scheme
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"


" config for vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" PLUGINS
call plug#begin()

Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" Theme
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdtree'

" 

" Autocomplete (Revisar este pedo)
"Plug 'neoclide/coc.vim', {'branch': 'release'}

call plug#end()


" Configuring plugin  lualine
lua << END
require('lualine').setup()
END


" Config NERDTREE
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
