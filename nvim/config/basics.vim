" OSX stupid backspace fix
set backspace=indent,eol,start

" basics
filetype plugin indent on
syntax on set number
set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set nobackup
set noswapfile
set nowrap

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=4 sts=4 sw=4 expandtab
