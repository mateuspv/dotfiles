""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Always use global ~/.vimrc
set nocompatible

" Enable filtype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Optimize for fast terminal connections
set ttyfast

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Don’t show the intro message when starting Vim
set shortmess=atI

""""""""""""""""""""""""""""""""""""""""""
" VIM interface
""""""""""""""""""""""""""""""""""""""""""
" Show numbers
set number

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over
set showmatch

" Keep 5 lines at the size
set sidescrolloff=10

" no real tabs
set expandtab

" Show the filename in the window titlebar
set title

" Highlight current line
set cursorline

" Show the current mode
set showmode

""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()                         " TYPE
	Plugin 'altercation/vim-colors-solarized' " Theme
	Plugin 'tomasr/molokai'                   " Theme
	Plugin 'easymotion/vim-easymotion'        " Search
	Plugin 'editorconfig/editorconfig-vim'    " Other
	Plugin 'Raimondi/delimitMate'             " autoclose () {} ...
	Plugin 'docunext/closetag.vim'            " HTML auto close tags
  Plugin 'mattn/emmet-vim'                  " HTML
  Plugin 'tpope/vim-fugitive'               " Git
	Plugin 'kien/ctrlp.vim'                   " File search
  Plugin 'ervandew/supertab'                " autocomplete
call vundle#end()

""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""
syntax enable

" ===> Monokai
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256

" ===> Solarized
"colorscheme solarized
"set background=dark
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256

"""""""""""""""""""""""""""""""""""""""""""
" Ctrl+p ignore
""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn|node_modules|bower_components|tmp|)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'some_bad_symbolic_links',
\ }

"""""""""""""""""""""""""""""""""""""""""""
" easymotion
"""""""""""""""""""""""""""""""""""""""""""
set nohlsearch
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-s)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
