let s:plugin = '~/.config/nvim/plugins/config/dein.toml'

"dein Scripts-----------------------------
"if dein#check_install()
"  call dein#install()
"endif
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/nao_e/.cache/dein/repos/github.com/Shougo/dein.vim

" Let dein manage dein
" Required:
" call dein#add('/home/nao_e/.cache/dein/repos/github.com/Shougo/dein.vim')

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml(s:plugin, {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts-------------------------
