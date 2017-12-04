" editing
autocmd BufEnter * EnableStripWhitespaceOnSave
let g:sexp_filetypes = '*'
set list
set listchars=tab:>-,trail:+

" parens
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
