" Vim-Commentor
" AUTHOR: Manas Thakur (manasthakur17@gmail.com)
" LICENSE: MIT
" VERSION: 1.0

function! commentor#CommentToggle(type, ...)
  " Get space-trimmed LHS-only commentstring
  let cmt_str = substitute(split(substitute(substitute(&commentstring, '\S\zs%s', ' %s', ''), '%s\ze\S', '%s ', ''), '%s', 1)[0], ' ', '', '')

  " Check if the first line is commented
  if match(getline('.'), cmt_str) == 0
    " Yes ==> uncomment
    if a:0
      " Visual mode
      silent execute "normal! :'<,'>s]^" . cmt_str . "]\<CR>`<"
    else
      " Normal mode
      silent execute "normal! :'[,']s]^" . cmt_str . "]\<CR>`["
    endif
  else
    " No ==> comment
    if a:0
      " Visual mode
      silent execute "normal! :'<,'>s]^]" . cmt_str . "\<CR>`<"
    else
      " Normal mode
      silent execute "normal! :'[,']s]^]" . cmt_str . "\<CR>`["
    endif
  endif
endfunction

" vim: tabstop=2
