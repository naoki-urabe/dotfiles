let g:python3_host_prog = '/usr/bin/python3'
runtime! plugins/dein.rc.vim
inoremap <silent> jj <ESC>
set number
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set clipboard+=unnamedplus
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set tags=./tags;,tags;
command Defx `escape(expand('%:p:h'), ' :')` -search=`expand('%:p')`
if has("autocmd")
    filetype plugin on
    filetype indent on
    autocmd FileType yaml setlocal sw=2 sts=2 ts=2 et
endif
" ファイル保存時にディレクトリがなかったら作成するか問う
augroup vimrc-auto-mkdir
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
  
  function! s:auto_mkdir(dir, force)
    if !isdirectory(a:dir) && (a:force || input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction
augroup END
