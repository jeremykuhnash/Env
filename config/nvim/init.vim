let mapleader = " "

" Reload init.vim
nnoremap <leader>r :source ~/Env/config/nvim/init.vim<cr>

" finding
set path+=**
set wildmenu
set nohlsearch

" navigation
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
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

" clojure
source ~/Env/config/nvim/clojure.vim
