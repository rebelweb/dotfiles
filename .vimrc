set nocompatible                " choose no compatibility with legacy vi
filetype off                    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'tpope/vim-fugitive.git'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'mattn/emmet-vim'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-ragtag'
  Plugin 'tpope/vim-rails'
  Plugin 'ngmy/vim-rubocop'
call vundle#end()            " required

filetype plugin indent on    " required

syntax enable
set encoding=utf-8
set showcmd                        " display incomplete commands
filetype plugin indent on          " load file type plugins + indentation
set cc=80                          " 80 character warning
set number                         " display line numbers
autocmd BufWritePre * :%s/\s\+$//e " remove ending whitespace

"" Whitespace
set nowrap                         " don't wrap lines
set tabstop=2 shiftwidth=2         " a tab is two spaces (or set this to 4)
set expandtab                      " use spaces, not tabs (optional)
set backspace=indent,eol,start     " backspace through everything in insert mode

"" Searching
set hlsearch                       " highlight matches
set incsearch                      " incremental searching
set ignorecase                     " searches are case insensitive...
set smartcase                      " ... unless they contain at least one capital letter

""CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

""Ragtag
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

"" Move Line Up & Down
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv
