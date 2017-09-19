let mapleader = " "
let maplocalleader = ","
set hidden

" init.vim
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>ve :edit $MYVIMRC<cr>

" finding
set path+=**
set wildmenu
set nohlsearch

" LVSTHW
noremap - ddp
noremap _ ddkP

" navigation
nnoremap <leader>pt :NERDTreeToggle<cr>
tnoremap <esc> <c-\><c-n>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" colors
autocmd VimEnter * source ~/Env/config/nvim/theme.vim

" clojure
source ~/Env/config/nvim/clojure.vim

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
vnoremap [ <esc>`>a]<esc>`<i[<esc>
vnoremap ] <esc>`>a]<esc>`<i[<esc>
vnoremap < <esc>`>a><esc>`<i<<esc>
vnoremap > <esc>`>a><esc>`<i[<esc>
vnoremap " <esc>`>a"<esc>`<i"<esc>
vnoremap ' <esc>`>a'<esc>`<i'<esc>

