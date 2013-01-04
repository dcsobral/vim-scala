" Vim compiler file
" Compiler:	sbt
" Maintainer:	Vincent Velociter

if exists("current_compiler")
  finish
endif
let current_compiler = "sbt"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=sbt\ compile

CompilerSet errorformat=%E%f:%l:\ %m,%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save

" vim:set sw=2 sts=2:
