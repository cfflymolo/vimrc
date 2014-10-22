set nocompatible
filetype plugin indent on

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set incsearch	" search as characters are entered
set hlsearch

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My Bundles here
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'elzr/vim-json'
Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'klen/python-mode'
Bundle 'dart-lang/dart-vim-plugin'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'shawncplus/phpcomplete.vim'
" Original repos on github

" Vim-scripts repos

" Non-github repos

filetype plugin indent on	" required!

set number
set nowrap
syntax enable

colorscheme base16-railscasts
set background=dark
set guifont=Sauce_Code_Powerline_Black:h14

set laststatus=2
set ttimeoutlen=50

" Automatically remove trialing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Set HTML-Jinja syntax highlighting
autocmd BufRead,BuFNewFile *.html set filetype=jinja
" Set Dart syntax highlighting
autocmd BufRead,BufNewFile *.dart set filetype=dart
" Set PHP syntax highlighting
autocmd BufRead,BufNewFile *.php set filetype=php

" syntastic-configuration
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" airline-configuration
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_imininsert=0
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts=1
let g:airline_theme='base16'
let g:airline#extensions#syntastic#enabled=1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '<'
let g:airline_symbols.space = "\ua0"
let g:airline_symbols.branch = '⎇'

" python-mode
let g:pymode_doc = 0

set completeopt-=preview
