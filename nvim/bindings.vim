" Bindings
map <C-n> :NERDTreeToggle<CR>
map <leader>d :ALEGoToDefinition<CR>
map <leader>r :ALEFindReferences<CR>
map <leader>f :ALEFix<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
map <F7> mzgg=G`z
nnoremap <Leader>pb :CtrlPBuffer<CR>
nnoremap <Leader>pq :CtrlPQuickfix<CR>
nnoremap <Leader>pl :CtrlPQuickfix<CR>
nnoremap <Leader>pm :CtrlPMixed<CR>

" MISC Settings
"
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
" Tsuquyomi
" set ballooneval
" autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

" ALE
nnoremap <Space>ad :ALEGoToDefinition<CR>
nnoremap <Space>ah :ALEHover<CR>

" let g:indent_guides_enable_on_vim_startup = 1
let g:ale_sign_column_always = 1
autocmd FileType javascript,typescript,json setlocal foldmarker={,}

nnoremap <Space>c1 :colorscheme colorsbox-material<CR>
nnoremap <Space>c2 :colorscheme duotone-darkforest<CR>
nnoremap <Space>c3 :colorscheme nova<CR>

" Fugitive
nnoremap <Space>gs :Gstatus<CR>
nnoremap <Space>gp :Gpush<CR>
nnoremap <Space>gu :Gpull<CR>
nnoremap <Space>gw :Gwrite<CR>
nnoremap <Space>gq :Gwq<CR>
