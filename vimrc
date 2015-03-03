set nocompatible
filetype off                " required for vundle

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

set noexpandtab
set nofoldenable            " disables code folding

set incsearch	            " search as characters are entered
set hlsearch

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/Vundle.vim'

" My Plugins here
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'elzr/vim-json'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'klen/python-mode'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'dag/vim2hs'

" all of your plugins must be added before the following line
call vundle#end()           " required

filetype plugin indent on	" required!

set number
set nowrap
syntax enable

colorscheme base16-railscasts
set background=dark

set laststatus=2
set ttimeoutlen=50

" Automatically remove trailing whitespace on save
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

let g:airline_symbols.space = "\ua0"
let g:airline_symbols.branch = '⎇'

" python-mode
let g:pymode_doc = 0
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0

set completeopt-=preview
