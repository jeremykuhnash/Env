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
nnoremap - ddp
nnoremap _ ddkP

source ~/Env/config/nvim/navigation.vim

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
