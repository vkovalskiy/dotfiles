let rnd = localtime() % 0x10000 

function! Random() 
  let g:rnd = (g:rnd * 31421 + 6927) % 0x10000 
  return g:rnd 
endfun 

function! Choose(n) " 0 n within 
  return (Random() * a:n) / 0x10000 
endfun 

function! RandomPlugin(count, line1, line2) 
  call setline(a:line1, Random())
endfun

command! -nargs=? -range=% Random :call RandomPlugin(<count>, <line1>, <line2>, <f-args>)
