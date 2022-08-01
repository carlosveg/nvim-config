set nocompatible
set number
set relativenumber
set title
set cursorline
set mouse=a
set encoding=utf-8
set clipboard=unnamed
set wrap
set autoread " Reload file if changed externally
" set termguicolors

syntax on

so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugins-config.vim
so ~/.config/nvim/maps.vim

" config for vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

lua << END
require('lualine').setup()
require("nvim-tree").setup()
require("bufferline").setup{}
END
