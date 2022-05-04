" Vim syntax file
" Language: booknote
" Maintainer: Alex Nicoll
" Latest Revision: 7 June 2020
"
" ## chapter/section
"   ...delineates parts of the book
" 
" > comment
" or
" [comment]
"   ...is a personal comment. My observations/responses to the text.
" 
" # source
" stuff
" #
"   ...is using an external source to clarify things.
"
" All other Lines are paraphrasing/quoting stuff that I find important or interesting.

if exists("b:current_syntax")
  " Syntax has already been defined.
  finish
endif

syntax match  booknotePart           "^## .*$"
syntax match  booknoteComment        "^> .*$"
syntax match  booknoteCommentInline  "\[.*\]"
syntax region booknoteResearch       fold matchgroup=booknoteResearchRef start="^# .*$" end="^#$"
"syntax match  booknoteResearch       "^# .*\n\&\_.\{-}#$" fold

hi link booknotePart           Function
hi link booknoteComment        Comment
hi link booknoteCommentInline  Comment
hi link booknoteResearchRef    Comment
hi      booknoteResearch       ctermfg=245 cterm=italic
