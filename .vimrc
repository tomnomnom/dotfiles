" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'tpope/vim-fugitive'
Bundle 'sjl/gundo.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'godlygeek/tabular'
Bundle 'benmills/vimux'
Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'

" Required for vundle
filetype plugin indent on 

" Syntax highlighting, go!
syntax on
set hlsearch

set encoding=utf-8

" Lots of history
set history=50

" So deets at the bottom
set showmode
set showcmd
set modeline
set ls=2

" Don't wrap long lines
set nowrap
set linebreak

" Auto indent what you can
set autoindent

" Make searching a little nicer
set ignorecase
set smartcase
set gdefault

" Match gt and lt as braces
" set matchpairs+=<:>
set showmatch

" Make backspace a bit nicer
set backspace=eol,start,indent

" Give me a ruler
set ruler

" Two spaces for a tab
set shiftwidth=2
set shiftround
set tabstop=2
set softtabstop=2
set expandtab

" Stop the mouse from interfering
set mouse=

" PHP
"map <F7>  :w <CR> :!php %<CR>
map <F8>  :w <CR> :!php -l %<CR>

" Highlight chars over 80 columns
" highlight OverEighty term=bold ctermfg=red
" match OverEighty /\%80v.*/

" I want to be able to read my comments
"hi Comment ctermfg=darkgray

" Re-indent XML
" map <F2> <Esc>:1,$!xmllint --format -<CR>

" Switch tabs
map 8 <Esc>:tabe 
map 9 gT
map 0 gt

" Open file under cursor in new tab
map <F9> <Esc><C-W>gF<CR>:tabm<CR>

" Reload current document on F5
" map <F5> <Esc>:edit<CR>

" Search for current word in code base

" My favourite
color xoria256

" Show the file title
set title

" Line numbers
set nu

" Toggle n on
" set ofu=syntaxcomplete#Completewrap
map <F6> <Esc>:set wrap!<CR>

" Direction keys for wrapped lines
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

map <silent> <c-Left> <Esc><c-w>h
map <silent> <c-Down> <Esc><c-w>j
map <silent> <c-Up> <Esc><c-w>k
map <silent> <c-Right> <Esc><c-w>l

nmap <F4> <Esc>:NERDTreeToggle<CR>

" Resize splits
nmap <C-F11> :resize -1<CR>
nmap <C-F12> :resize +1<CR>
nmap <C-n> <C-W>>
nmap <C-m> <C-W><

" Bash / emacs keys for command line
cnoremap <C-a>  <Home>
cnoremap <C-e>  <End>

map <F7> :source $MYVIMRC<CR>

" Snips
imap <C-l>p <Esc>!!which php<CR>I#!<Esc>o<?php<CR>

command! W w !sudo tee % > /dev/null
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

set hidden "Enable jumping into files in a search buffer

set showbreak=▹

map <F5> <Esc>:GundoToggle<CR>

map <Leader>p :!phpunit<CR>
map <Leader>l :!php -l %<CR>
