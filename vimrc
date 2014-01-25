runtime! debian.vim

if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'scrooloose/syntastic'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'

filetype plugin indent on

let mapleader=","

color jellybeans

set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden	
set mouse=a
set nowrap
set tabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set scrolloff=5
set smarttab
set hlsearch
set ruler
set visualbell
set number

imap jk <Esc>

nmap <silent> <leader>s :set nolist!<CR>

nmap <silent> <leader>n :silent :nohlsearch<CR>

nmap <C-N><C-N> :set invnumber<CR>

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

