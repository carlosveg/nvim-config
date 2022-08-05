" Para el tema me gusta bastante gruvbox pero voy a probar el de nightfox a
" ver que tal va
" Para probar el tema gruvbox basta con descomentar las lineas 7 y 8 y
" comentar la linea 9

" Color scheme
" autocmd vimenter * ++nested colorscheme gruvbox
" let g:gruvbox_contrast_dark = "hard"
colorscheme nightfox

" Config for vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" NERDTree Syntax highligth
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" Polyglot syntax highlighting
let g:python_highlight_all = 1

" Coc
let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start']
    \ }
