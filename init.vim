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

lua << END
require('lualine').setup()
require("nvim-tree").setup()
require("bufferline").setup{}
END
