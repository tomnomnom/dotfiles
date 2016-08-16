nmap <Leader>; :!go build && ./$(basename $(pwd))<CR>
nmap <Leader>f mp:%!gofmt<CR>`pzz
nmap <Leader>i mp:%!goimports<CR>`pzz
nmap <Leader>b <Plug>(go-build)
nmap <Leader>t <Plug>(go-test)
nmap <Leader>d <Plug>(go-def-tab)
nmap <Leader>h <Plug>(go-doc)
nmap <Leader>a <Plug>(go-alternate-edit)
nmap <Leader>v <Plug>(go-alternate-vertical)
nmap <C-n> :cn<CR>
nmap <C-p> :cp<CR>

let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_type_info = 1

set noexpandtab
