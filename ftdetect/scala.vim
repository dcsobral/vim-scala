au BufRead,BufNewFile *.scala set filetype=scala
au BufRead,BufNewFile *.scala compiler scalac
au BufNewFile,BufRead *.sbt set filetype=scala

" Use haml syntax for scaml
au BufRead,BufNewFile *.scaml set filetype=haml
