" Vim syntax file
" " Language: Second Order Logic Prenex Form
" " Maintainer: Alejandro Machado
" " Latest Revision: May 23, 2010

if exists("b:current_syntax")
    finish
endif

" Keywords
" syn keyword PrenexQuantifiers exists forall so-exists so-forall
" syn keyword PrenexPredicates and or not
syn match PrenexInt '\d\+'
syn match PrenexQuantifiers '\<\(exists\|forall\|so-exists\|so-forall\)\>'
syn keyword PrenexPredicates and or not implies Inj Func
syn match PrenexPredicates '\<\u\+\>'
syn match PrenexVariables '?\w\+'
syn region PrenexComment start=';' end='\n'

" Setup syntax highlighting
let b:current_syntax = "prenex"

hi def link PrenexQuantifiers       Keyword
hi def link PrenexVariables         Special
hi def link PrenexPredicates        Type
hi def link PrenexInt               Constant
hi def link PrenexComment           Comment
