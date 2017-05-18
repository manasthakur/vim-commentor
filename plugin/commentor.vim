" Vim-Commentor
" AUTHOR: Manas Thakur (manasthakur17@gmail.com)
" LICENSE: MIT
" VERSION: 1.0

" Exit if commentor is already loaded
if exists("g:loaded_commentor")
	finish
endif
let g:loaded_commentor = 1

nnoremap <silent> <Plug>Commentor :<C-u>set opfunc=commentor#CommentToggle<CR>g@
xnoremap <silent> <Plug>Commentor :<C-u>call commentor#CommentToggle(visualmode(), 1)<CR>
nnoremap <silent> <Plug>CommentorLine :<C-u>set opfunc=commentor#CommentToggle<bar>execute "normal! " . v:count1 . "g@_"<CR>

" Default mappings
if !hasmapto('<Plug>Commentor')
  nmap gc <Plug>Commentor
  xmap gc <Plug>Commentor
endif

if !hasmapto('<Plug>CommentorLine')
  nmap gcc <Plug>CommentorLine
endif

" vim: tabstop=2
