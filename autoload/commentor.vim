" Vim-Commentor
" AUTHOR: Manas Thakur (manasthakur17@gmail.com)
" VERSION: 1.1
" LICENSE: MIT

function! commentor#CommentToggle(type, ...)
  " Get the list of comment-markers
  let cmt_markers = split(substitute(substitute(&commentstring, '\S\zs%s', ' %s', ''), '%s\ze\S', '%s ', ''), '%s', 1)

  " Get space-trimmed LHS and RHS comment-markers
  let lhs_cmt_marker = escape(substitute(cmt_markers[0], ' ', '', ''), '*')
  let rhs_cmt_marker = escape(substitute(cmt_markers[1], ' ', '', ''), '*')

  " Check if the first line is commented
  if match(getline('.'), lhs_cmt_marker) == 0
    " Yes ==> uncomment
    if a:0
      " Visual mode
      silent execute "normal! :'<,'>s]^" . lhs_cmt_marker . "]\<CR>`<"
      silent execute "normal! :'<,'>s]" . rhs_cmt_marker . "$]]\<CR>`<"
    else
      " Normal mode
      silent execute "normal! :'[,']s]^" . lhs_cmt_marker . "]\<CR>`["
      silent execute "normal! :'[,']s]" . rhs_cmt_marker . "$]]\<CR>`["
    endif
  else
    " No ==> comment
    if a:0
      " Visual mode
      silent execute "normal! :'<,'>s]^]" . lhs_cmt_marker . "\<CR>`<"
      silent execute "normal! :'<,'>s]$]" . rhs_cmt_marker . "\<CR>`<"
    else
      " Normal mode
      silent execute "normal! :'[,']s]^]" . lhs_cmt_marker . "\<CR>`["
      silent execute "normal! :'[,']s]$]" . rhs_cmt_marker . "\<CR>`["
    endif
  endif
endfunction

" vim: tabstop=2
