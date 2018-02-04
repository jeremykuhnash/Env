call plug#begin('~/.local/share/nvim/plugged')
" Plug 'roxma/python-support.nvim'
Plug '/usr/local/opt/fzf'
Plug 'christoomey/vim-tmux-navigator'
Plug 'clojure-vim/async-clj-omni'
Plug 'fatih/vim-go'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'roxma/nvim-completion-manager'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace'
Plug 'vim-scripts/DrawIt'
Plug 'wolverian/minimal'
call plug#end()

autocmd BufEnter * EnableStripWhitespaceOnSave
set mouse=a
set termguicolors
syntax on
let mapleader=' '
let maplocalleader=','

colorscheme minimal
highlight Normal guibg=white

" What horizontal and vertical splits look like
" ⁖
set statusline=%=\ \ \ \ \ ჻\ %f\ \ \ \ \ \ \ \
" set fillchars+=vert:╽,stl:╼,stlnc:\
set fillchars+=vert:╽,stlnc:\

" Searching
set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:c:%m
nnoremap <silent> <leader>pf :FZF<cr>
nnoremap <silent> <leader>/ :Ag<cr>
nnoremap <silent> <leader>bb :Buffers<cr>
nnoremap <silent> <leader>bn :bn<cr>
nnoremap <silent> <leader>bp :bp<cr>
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
nnoremap <silent> <leader>pt :NERDTreeToggle<cr>
let g:NERDTreeDirArrowExpandable = '჻'
let g:NERDTreeDirArrowCollapsible = '⁖'
highlight Directory gui=NONE ctermfg=black guifg=black

" Quickfix
highlight qfFileName gui=NONE,bold guifg=black

set listchars=tab:>-,trail:+
set hlsearch
set noshowmatch
let g:loaded_matchparen=1

source ~/code/Env/vim/tabline.vim

highlight VertSplit guibg=lightgrey guifg=white
highlight clear StatusLine
highlight clear StatusLineNC
highlight StatusLine guibg=white guifg=white cterm=none
highlight StatusLineNC guibg=white guifg=white cterm=none
highlight Cursor guifg=green
highlight clear CursorLine
highlight CursorLine guibg=white guibg=#F7F7F7
highlight NonText guifg=black
highlight Visual guibg=#FFFFD0
highlight Search guibg=#FFFFD0
set cursorline
au Filetype clojure let b:AutoPairs = {'(':')', '[':']', '{':'}','"':'"', '`':'`'}

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

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
highlight Pmenu  term=NONE cterm=NONE gui=NONE guibg=#F7F7F7 guifg=#F8F8F8
highlight PmenuSel  term=NONE cterm=NONE gui=NONE,bold,underline guibg=#F7F7F7 guifg=black
set completeopt=menu,noinsert,noselect
set ignorecase
set smartcase
set infercase
set shortmess+=cI

" Go
let g:go_fmt_command = "goimports"
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
autocmd FileType go nnoremap <buffer><silent><localleader>t :GoTest<cr>
autocmd FileType go nnoremap <buffer><silent><localleader>b :GoBuild<cr>

