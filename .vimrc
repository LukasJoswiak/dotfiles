call plug#begin()

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'ledger/vim-ledger'

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

set expandtab
set shiftwidth=4
set softtabstop=4

" Enable highlight on search
set hlsearch

" Indent with 2 spaces in cpp files
autocmd Filetype cpp setlocal shiftwidth=2 softtabstop=2 expandtab

" Indent with 2 spaces in C files
autocmd Filetype c setlocal shiftwidth=2 softtabstop=2 expandtab

" Ledger shortcuts
" Indent with 2 spaces in ledger files
autocmd Filetype ledger setlocal shiftwidth=2 softtabstop=2 expandtab

" Toggle between posting status
au FileType ledger nnoremap <Leader>rd :call ledger#transaction_state_toggle(line('.'), ' *!')<CR>
" Transaction date shortcuts
au FileType ledger nnoremap <Leader>r1 :call ledger#transaction_date_set(line('.'), 'primary')<CR>
au FileType ledger nnoremap <Leader>r2 :call ledger#transaction_date_set(line('.'), 'auxiliary')<CR>
au FileType ledger nnoremap <Leader>r3 :call ledger#transaction_date_set(line('.'), 'unshift')<CR>

au FileType ledger inoremap <silent> <Tab> <C-r>=ledger#autocomplete_and_align()<CR>
au FileType ledger vnoremap <silent> <Tab> :LedgerAlign<CR>

" Enable folding by default for ledger files.
au FileType ledger setlocal foldmethod=syntax

" Use $ as default commodity
let g:ledger_default_commodity = '$'
" No blank line between folded transactions
let g:ledger_fold_blanks = 1
" Autocomplete based on detail, not alphabetically
let g:ledger_detailed_first = 1
