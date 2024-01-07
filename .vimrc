call plug#begin()

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-obsession'
Plug 'ledger/vim-ledger'

call plug#end()

let mapleader = ","

" fzf remaps
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Rg<CR>
nmap <Leader>m :Marks<CR>

" Move between Vim panes
nmap <Leader>h <C-W>h
nmap <Leader>j <C-W>j
nmap <Leader>k <C-W>k
nmap <Leader>l <C-W>l

nmap cs :w<CR>     " Save file with cs
imap jj <Esc>      " Remap escape to jj

set noswapfile     " Disable swap files
syntax on          " Turn on syntax highlighting
set number         " Enable line numbers
set relativenumber " Current line shows absolute line number
set ruler          " Show row and column information
set hlsearch       " Enable highlight on search
set hidden         " Hide buffers instead of abandoning them

set autoindent
set expandtab      " Expand tabs to spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Enable persistent undo
if has('persistent_undo')
    let undodir = expand('~/.vim/undo')
    if !isdirectory(undodir)
        call mkdir(undodir)
    endif
    let &undodir=undodir
    set undofile
endif

" Indent with 2 spaces in cpp files
au FileType cpp setlocal shiftwidth=2 softtabstop=2 expandtab

" Indent with 2 spaces in C files
au FileType c setlocal shiftwidth=2 softtabstop=2 expandtab

" Indent with 2 spaces in Arduino files
au FileType arduino setlocal shiftwidth=2 softtabstop=2 expandtab
