" Setter
set number
set relativenumber
set title
set cursorline
set mouse=a
set encoding=utf-8
set clipboard+=unnamedplus

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

" Status bar
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" Theme
Plug 'morhetz/gruvbox'
" Resaltado de sintaxis (syntax highligth)
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdtree'

" For react auto close tag
" Plug 'alvan/vim-closetag'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" Autocomplete (Revisar este pedo)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" Configuring plugin  lualine
lua << END
require('lualine').setup()
END


" Config NERDTREE
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
