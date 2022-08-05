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
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
END
