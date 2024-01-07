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

" Disable swap files
set noswapfile

" Move between Vim panes
nmap <Leader>h <C-W>h
nmap <Leader>j <C-W>j
nmap <Leader>k <C-W>k
nmap <Leader>l <C-W>l

" Save file with cs
nmap cs :w<CR>

" Remap escape to jj
imap jj <Esc>

" Turn on syntax highlighting
syntax on

" Enable line numbers
set number
set relativenumber

" Show row and column information
set ruler

set autoindent

" Indent with spaces
set expandtab
set shiftwidth=4
set softtabstop=4

" Enable highlight on search
set hlsearch

" Hide buffers instead of abandoning them
set hidden

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
