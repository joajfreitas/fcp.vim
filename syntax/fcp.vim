if exists("b:current_syntax")
    finish
endif

syntax keyword fcpKeyword device message signal config command
highlight link fcpKeyword Keyword

let b:current_syntax = "fcp"
