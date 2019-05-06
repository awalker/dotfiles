" init
"let mapleader = ',<space>'

set encoding=utf8
"set guifont=Hack\ Nerd\ Font\ Regular:h14

" Custom python install
let g:python3_host_prog = '/usr/local/bin/python3'

let g:startify_bookmarks = [ {'m': '~/Documents/Source/mellowedout'}, '~/Documents/Source/Henkel', '~/.zshrc' ]

source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/basics.vim
source $HOME/.config/nvim/config/airline.vim
source $HOME/.config/nvim/config/ag.vim
source $HOME/.config/nvim/bindings.vim
source $HOME/.config/nvim/config/deoplete.vim
source $HOME/.config/nvim/setcolors.vim

" SetColors all


" Theme
syntax enable
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
" configure transparent background
" let g:nova_transparent = 1
colorscheme nova
" colorscheme duotone-darkforest
" colorscheme colorsbox-material

set mouse=a

let g:ale_fixers = {
\  'typescript': ['tslint', 'remove_trailing_lines', 'trim_whitespace']
\}

let g:ale_linters = {'typescript': ['prettier', 'tslint', 'tsserver', 'typecheck']}

let g:ctrlp_extensions = ['quickfix']


