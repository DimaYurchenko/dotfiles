syntax on

set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
set smartindent
set noerrorbells
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set ts=2
set sts=2
set et
set number relativenumber
set nu rnu
set encoding=UTF-8
set laststatus=2 "makes powerline always visible
set nocompatible
filetype off

" use line cursor in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'ryanoasis/vim-devicons'
Plugin 'dag/vim-fish'
Plugin 'valloric/youcompleteme'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on 

" Mapped keys

nmap <C-n> :NERDTreeToggle<CR>

" Remaped keys
inoremap jk <ESC> 

" move lines up/down with <A-j>/<A-k>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" fix Alt key encoding
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=50

" THEMES
packadd! dracula
syntax enable
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

" NERTTree
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

set noshowmode "removes duplicate mode indication
