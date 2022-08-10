call plug#begin()

" Status bar
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" Theme
Plug 'morhetz/gruvbox'
Plug 'EdenEast/nightfox.nvim'

" Resaltado de sintaxis (syntax highligth)
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'

" For react auto close tag
Plug 'alvan/vim-closetag'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" Telescope
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

call plug#end()
