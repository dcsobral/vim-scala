" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
setlocal formatoptions=tcqr
setlocal formatprg=scala\ -cp\ ~/bin/scalariform_2.9.0-0.1.1.jar\ scalariform.commandline.Main\ --forceOutput
"
" Operator notation: transforms a.b(c) to a b c
nmap <buffer> <leader>s. f.r<space>f(ds(i <esc>

" Triple quotes: transforms "abc" to """abc"""
nmap <buffer> <leader>s" ysi""lysi""

" Format with scalariform
nmap <buffer> <leader>i mygggqG'y
