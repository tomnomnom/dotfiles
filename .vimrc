" Vundle
filetype off

let g:vundle_default_git_proto = 'git'
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
Bundle 'TomNomNom/xoria256.vim'
Bundle 'tomasr/molokai'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'jpalardy/vim-slime'

" vim-slime config
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

" Required for vundle
"filetype plugin indent on 
filetype plugin on 

" Highlighting
syntax on

set encoding=utf-8

" History
set history=50

" Display
set ls=2
set showmode
set showcmd
set modeline
set ruler
set title
set nu

" Line wrapping
set nowrap
set linebreak
set showbreak=▹

" Auto indent what you can
set autoindent

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch

" Enable jumping into files in a search buffer
set hidden 

" Make backspace a bit nicer
set backspace=eol,start,indent

" Indentation
set shiftwidth=2
set tabstop=2
set softtabstop=2
set shiftround
set expandtab

" Disable mouse
set mouse=

" Colorscheme
if &t_Co == 256
  color xoria256
endif

" Switch tabs
map 8 <Esc>:tabe 
map 9 gT
map 0 gt

" Gundo toggle
map <F5> <Esc>:GundoToggle<CR>

" Toggle line-wrap
map <F6> <Esc>:set wrap!<CR>

" Open file under cursor in new tab
map <F9> <Esc><C-W>gF<CR>:tabm<CR>

" Direction keys for wrapped lines
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

" Bash / emacs keys for command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Write current file with sudo perms
"command! W w !sudo tee % > /dev/null
command! W w

" Open word under cursor as ctag in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

if $VIMENV == 'talk'
  set background=light
  let g:solarized_termcolors=256
  colo solarized
  noremap <Space> :n<CR>
  noremap <Backspace> :N<CR>
endif

set noesckeys

set nocompatible

set cryptmethod=blowfish
