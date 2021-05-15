if exists("b:current_syntax")
    finish
endif

syntax keyword fcpKeyword device message signal config command

syntax keyword fcpFunction id type size str sat dlc period

syn keyword	fcpTodo		contained TODO FIXME XXX

" cCommentGroup allows adding matches for special things in comments
syn cluster	fcpCommentGroup	contains=fcpTodo
syn region fcpCommentBlock             matchgroup=fcpCommentBlock         start="/\*\%(!\|\*[*/]\@!\)\@!" end="\*/" contains=fcpTodo,@Spell

"integer number, or floating point number without a dot and with "f".
syn case ignore
syn match	fcpNumbers	display transparent "\<\d\|\.\d" contains=cNumber,cFloat,cOctalError,cOctal
" Same, but without octal error (for comments)
syn match	fcpNumbersCom	display contained transparent "\<\d\|\.\d" contains=cNumber,cFloat,cOctal
syn match	fcpNumber		display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
"hex number
syn match	fcpNumber		display contained "0x\x\+\(u\=l\{0,2}\|ll\=u\)\>"
" Flag the first zero of an octal number as something special
syn match	fcpOctal		display contained "0\o\+\(u\=l\{0,2}\|ll\=u\)\>" contains=cOctalZero
syn match	fcpOctalZero	display contained "\<0"
syn match	fcpFloat		display contained "\d\+f"
"floating point number, with dot, optional exponent
syn match	fcpFloat		display contained "\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\="
"floating point number, starting with a dot, optional exponent
syn match	fcpFloat		display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match	fcpFloat		display contained "\d\+e[-+]\=\d\+[fl]\=\>"
"hexadecimal floating point number, optional leading digits, with dot, with exponent
syn match	fcpFloat		display contained "0x\x*\.\x\+p[-+]\=\d\+[fl]\=\>"
"hexadecimal floating point number, with leading digits, optional dot, with exponent
syn match	fcpFloat		display contained "0x\x\+\.\=p[-+]\=\d\+[fl]\=\>"
endif

" flag an octal number with wrong digits
syn match	cOctalError	display contained "0\o*[89]\d*"
syn case match

highlight link fcpKeyword Keyword
highlight link fcpFunction Function
highlight link fcpComment Comment
hi def link fcpTodo		Todo
hi def link fcpCommentBlock   Comment
hi def link cNumber		Number
hi def link cOctal		Number
hi def link cOctalZero		PreProc	 " link this to Error if you want
hi def link cFloat		Float


let b:current_syntax = "fcp"
