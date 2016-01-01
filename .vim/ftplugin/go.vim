nmap <Leader>; :!go build && ./$(basename $(pwd))<CR>
nmap <Leader>b :!go test -bench=.<CR>
nmap <Leader>t :!go test<CR>
nmap <Leader>f mp:%!gofmt<CR>`pzz
nmap <Leader>i mp:%!goimports<CR>`pzz
nmap <Leader>d <Plug>(go-def-tab)
nmap <Leader>h <Plug>(go-doc)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

set noexpandtab
