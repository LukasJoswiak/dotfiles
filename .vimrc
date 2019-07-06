call plug#begin()

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

let mapleader = ","

" fzf remaps
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

" Move between Vim panes
nmap <Leader>h <C-W>h
nmap <Leader>j <C-W>j
nmap <Leader>k <C-W>k
nmap <Leader>l <C-W>l

" Remap escape to jj
imap jj <Esc>

" Turn on syntax highlighting
syntax on

" Enable line numbers
set number
set relativenumber

set autoindent

set expandtab
set shiftwidth=4
set softtabstop=4

" Enable highlight on search
set hlsearch

" Indent with 2 spaces in cpp files
autocmd Filetype cpp setlocal shiftwidth=2 softtabstop=2 expandtab

" Save file with cs
nmap cs :w<CR>
