set nocompatible
set number
set relativenumber
set noswapfile
set nowrap

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set ignorecase
set smartcase
set nohlsearch
set incsearch

set laststatus=2
set encoding=utf-8
set wildmode=longest,list,full
set background=dark
set clipboard=unnamedplus

syntax on

let mapleader = " "

nnoremap <leader>w :write<CR>
nnoremap <leader>q :quit<CR>
nnoremap <leader>o :update<CR>:source %<CR>
nnoremap <leader>y "+y
vnoremap <leader>y "+y
