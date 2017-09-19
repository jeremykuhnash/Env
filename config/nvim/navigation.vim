" navigation

" completion
let g:cm_matcher = {'module': 'cm_matchers.substr_matcher', 'case': 'smartcase'}
set shortmess+=c
" tab key for completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" NERDTree
nnoremap <leader>pt :NERDTreeToggle<cr>

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <leader>pf :Files<cr>
nnoremap <leader>bb :Buffers<cr>
nnoremap <leader><leader> :Commands<cr>
nnoremap <leader>/ :Ag<cr>

" window navigation
tnoremap <esc> <c-\><c-n>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
