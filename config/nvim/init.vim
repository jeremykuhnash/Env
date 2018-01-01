let mapleader = " "
let maplocalleader = ","

source ~/Env/config/nvim/navigation.vim
source ~/Env/config/nvim/editing.vim
autocmd VimEnter * source ~/Env/config/nvim/theme.vim

" init.vim
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>ve :edit $MYVIMRC<cr>
nnoremap <leader>vt :helptags ALL<cr>

" finding
set path+=**
set wildmenu
set nohlsearch

" LVSTHW
nnoremap - ddp
nnoremap _ ddkP

" undo history, etc
set hidden
set undofile
set undodir=~/.vim/undo
