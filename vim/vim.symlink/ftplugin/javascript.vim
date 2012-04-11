let s:beautifier = 'js-beautify -i --indent-size=2 --jslint-happy'

function! JSBeautify() range
	exe ':'.a:firstline.','.a:lastline.'!'.s:beautifier
endfunction

command! -range=% -nargs=0 JSBeautify <line1>,<line2>:call JSBeautify()
