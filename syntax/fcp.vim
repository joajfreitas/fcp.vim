if exists("b:current_syntax")
    finish
endif

syntax keyword fcpKeyword device message signal config command

syntax keyword fcpFunction id type size str sat dlc period

syn keyword	fcpTodo		contained TODO FIXME XXX

" cCommentGroup allows adding matches for special things in comments
syn cluster	fcpCommentGroup	contains=fcpTodo
syn region fcpCommentBlock             matchgroup=fcpCommentBlock         start="/\*\%(!\|\*[*/]\@!\)\@!" end="\*/" contains=fcpTodo,@Spell


highlight link fcpKeyword Keyword
highlight link fcpFunction Function
highlight link fcpComment Comment
hi def link fcpTodo		Todo
hi def link fcpCommentBlock   Comment


let b:current_syntax = "fcp"
