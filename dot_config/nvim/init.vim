set number
set expandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set clipboard+=unnamedplus
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/nao_e/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/nao_e/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/nao_e/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('preservim/nerdtree')
" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

autocmd VimEnter * execute 'NERDTree' | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
