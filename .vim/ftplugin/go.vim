map <Leader>; :!go build && ./$(basename $(pwd))<CR>
map <Leader>b :!go build<CR>
map <Leader>t :!go test<CR>
map <Leader>f mp:%!gofmt<CR>`pzz
map <Leader>i mp:%!goimports<CR>`pzz

set noexpandtab
