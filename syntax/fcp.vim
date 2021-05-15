if exists("b:current_syntax")
    finish
endif

syntax keyword fcpKeyword device message signal config command

syntax keyword fcpFunction id type size str sat dlc period

highlight link fcpKeyword Keyword
highlight link fcpFunction Function

let b:current_syntax = "fcp"
