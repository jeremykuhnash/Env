" From :help setting-tabline

function! MyTabLabel(n)
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n)
	return fnamemodify(bufname(buflist[winnr - 1]), ':p:t:~:.')
endfunction

function! MyTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
		" select the highlighting
		if i + 1 == tabpagenr()
			let s .= '჻ %#TabLineSel#'
		else
			let s .= '  %#TabLine#'
		endif

		" set the tab page number (for mouse clicks)
		let s .= '%' . (i + 1) . 'T'

		" the label is made by MyTabLabel()
		let s .= '%{MyTabLabel(' . (i + 1) . ')}%#TabLineBetween# '
	endfor

	" after the last tab fill with TabLineFill and reset tab page nr
	let s .= '%#TabLineFill#%T'

	return s
endfunction

set tabline=%!MyTabLine()
set showtabline=2 " always
let g:tablineclosebutton=0
" highlight TabLineFill guifg=white guibg=white cterm=none
" highlight TabLineSel guifg=#F9F9F9 guibg=white gui=none cterm=bold,underline
" highlight PmenuSel guifg=#F9F9F9 guibg=white gui=none cterm=bold,underline
" highlight TabLine guifg=#F9F9F9 guibg=white gui=none cterm=none
