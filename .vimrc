set tabstop=4
set shiftwidth=4
set softtabstop=4
set number relativenumber
set clipboard=unnamed
set nocompatible
set nowrap
let mapleader=','
set foldmethod=syntax
nnoremap <space> za
set foldlevel=120
set encoding=utf-8
set incsearch
syntax on

" show spacings and tabs
set list
set listchars=tab:•\ ,trail:•,extends:»,precedes:«
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>

noremap <C-Right> :tabn<CR>
noremap <C-Left> :tabp<CR>

" initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" ===============
"  Start Plugins
" ===============

Plugin 'tpope/vim-surround' " Makes it easy to replace things
Plugin 'tpope/vim-commentary' " makes commenting much easier
Plugin 'ervandew/supertab' " autocompletion if you press tab
Plugin 'takac/vim-hardtime' " stops you from scrolling down with up and down keys
" Enjoy your hard time
" let g:hardtime_default_on = 1

" Color themes
Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'rakr/vim-colors-rakr'

Plugin 'scrooloose/nerdtree' " File explorer
nnoremap <C-o> :NERDTreeToggle<CR>

Plugin 'vim-airline/vim-airline' " the airline at the bottom of vim
Plugin 'vim-airline/vim-airline-themes' " the airline-themes

" =============
"  End Plugins
" =============
"
call vundle#end()
filetype plugin indent on

" Colortheme and airline
let g:solarized_italic=0
colorscheme dracula
set background=dark
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='dracula'
let g:airline_luna_bg='dark'
set t_Co=256
set laststatus=2
let g:airline_exclude_preview = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = 'p'
let g:airline_symbols.whitespace = 'Ξ'