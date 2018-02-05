call plug#begin('~/.local/share/nvim/plugged')
" Plug 'roxma/python-support.nvim'
Plug '/usr/local/opt/fzf'
Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'clojure-vim/async-clj-omni'
Plug 'fatih/vim-go'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'qpkorr/vim-bufkill'
Plug 'romainl/vim-cool'
Plug 'roxma/nvim-completion-manager'
Plug 'scrooloose/nerdtree'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/DrawIt'
Plug 'vim-scripts/LargeFile'
Plug 'vimlab/split-term.vim'
call plug#end()

let g:airline#extensions#whitespace#enabled=0
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
set autoread
set noswapfile
set inccommand=nosplit
" autocmd VimEnter * Limelight
autocmd VimEnter * Goyo
autocmd VimResized * if exists('#goyo') | exe "normal \<c-w>=" | endif

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

function! s:goyo_enter()
  silent !tmux set status off
  set foldcolumn=0
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  set foldcolumn=4
  source ~/code/Env/vim/tabline.vim
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l

autocmd BufEnter * EnableStripWhitespaceOnSave
set mouse=a
set noshowmode
set termguicolors
syntax on
let mapleader=' '
let maplocalleader=','

let g:nord_comment_brightness = 12
colorscheme nord
let g:airline_theme='base16'

" set number
set numberwidth=1
highlight LineNr guibg=bg guifg=bg
set foldcolumn=4
highlight foldcolumn guibg=bg
highlight VertSplit guibg=bg guifg=bg
set splitright

" Searching
set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:c:%m
nnoremap <silent> <leader>pf :FZF<cr>
nnoremap <silent> <leader>/ :Ag<cr>
nnoremap <silent> <leader>bb :Buffers<cr>
nnoremap <silent> <leader>bn :bn<cr>
nnoremap <silent> <leader>bp :bp<cr>
nnoremap <silent> <leader>bd :BD<cr>
nnoremap <silent> <leader>gs :Gstatus<cr>
nnoremap <silent> <leader>df :Goyo<cr>
nnoremap <silent> <leader>dl :Limelight!!<cr>
let g:fzf_layout = { 'down': '15' }
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R .'
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'Normal'],
  \ 'bg+':     ['bg', 'Normal'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" File tree
nnoremap <silent> <leader>pt :Goyo!\|NERDTreeToggle<cr>
nnoremap <silent> <leader>wj :wincmdj<cr>
nnoremap <silent> <leader>wh :wincmd h<cr>
nnoremap <silent> <leader>wj :wincmd j<cr>
nnoremap <silent> <leader>wk :wincmd k<cr>
nnoremap <silent> <leader>ww :wincmd w<cr>
nnoremap <silent> <leader>w= execute "normal \<c-w>="
let g:NERDTreeDirArrowExpandable = '჻'
let g:NERDTreeDirArrowCollapsible = '⁖'

set listchars=tab:>-,trail:+
set hlsearch
set noshowmatch
let g:loaded_matchparen=1

au Filetype clojure let b:AutoPairs = {'(':')', '[':']', '{':'}','"':'"', '`':'`'}

set tabstop=4
set shiftwidth=4

" finding
set path+=**
set wildmenu
set wildmode=longest,list,full

" undo history, etc
set hidden
set undofile
set undodir=~/.vim/undo
set directory=$HOME/.vim/swapfiles//

" completion
set completeopt=menu,noinsert,noselect
set ignorecase
set smartcase
set infercase
set shortmess+=cI
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Go
let g:go_fmt_command = "goimports"
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
autocmd FileType go nnoremap <buffer><silent><localleader>t :GoTest<cr>
autocmd FileType go nnoremap <buffer><silent><localleader>b :GoBuild<cr>

source ~/code/Env/vim/tabline.vim
