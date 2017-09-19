let mapleader = " "
let maplocalleader = ","

source ~/Env/config/nvim/navigation.vim
source ~/Env/config/nvim/clojure.vim
autocmd VimEnter * source ~/Env/config/nvim/theme.vim

" init.vim
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>ve :edit $MYVIMRC<cr>
nnoremap <leader>vt :helptags ALL<cr>

" editing
autocmd BufEnter * EnableStripWhitespaceOnSave
let g:sexp_filetypes = '*'

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
