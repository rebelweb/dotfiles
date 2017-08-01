" Don't care about vi
set nocompatible

" helps with plugins loading properly
filetype off

" default color scheme
colorscheme evening

" Load Plugins below
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'liuchengxu/eleline.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
call vundle#end()
" End of Plugins

" Ctrlp Open in New Tab by Default
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" Remove Trailing Spaces
autocmd BufWritePre * :%s/\s\+$//e

"show status line
set laststatus=2

" Ignore certain files for ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" highlight syntax
syntax on

" For Plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Set a visual bell inside of audible one
set visualbell

" Set encoding
set encoding=utf-8

" Set tabstops
set tabstop=2
set expandtab
set sw=2

" Set Font Size
set guifont=Monaco:h14

" 80 Column Character Warning
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" Custom Keybindings

" Move selection up or down
noremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
vnoremap <S-Up> <Esc>:m-2<CR>
vnoremap <S-Down> <Esc>:m+<CR>

" Tab Switch
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>

" Close Tab
noremap <C-W> :bd<CR>

" Open Explorer
noremap <C-E> :Explore<CR>
