set nocompatible
set number
set relativenumber
set title
set cursorline
set mouse=a
set encoding=utf-8
set fileencoding="utf-8"
set clipboard=unnamedplus
set wrap
set autoread " Reload file if changed externally
set expandtab
" set cmdheight=2

" with gruvbox comment next line
set termguicolors

syntax on

so ~/.config/nvim/maps.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugins-config.vim
so ~/.config/nvim/lua/user/init.lua

" Delete white spaces
autocmd BufWritePre * :%s/\s\+$//e
