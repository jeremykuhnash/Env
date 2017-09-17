let mapleader = " "

" Reload init.vim
nnoremap <leader>r :source ~/Env/config/nvim/init.vim<cr>

" finding
set path+=**
set wildmenu
set nohlsearch

" navigation
tnoremap <esc> <c-\><c-n>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" colors
set termguicolors
packadd onedark.vim
colorscheme onedark
highlight Normal ctermbg=NONE guibg=#2a2a2a
highlight NonText ctermbg=NONE guibg=#2a2a2a
highlight StatusLine ctermbg=NONE guibg=#2a2a2a

" on save, undo history, etc
autocmd BufWritePre * silent! :%s/\s\+$//g
set undofile
set undodir=~/.vim/undo

" brackets
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
inoremap " ""<esc>i
vnoremap ( <esc>`>a)<esc>`<i(<esc>
vnoremap ) <esc>`>a)<esc>`<i(<esc>
