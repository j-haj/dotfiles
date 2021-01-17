" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on
set autoindent
set smartindent

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8


call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sainnhe/edge'
Plug 'gilgigilgil/anderson.vim'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
call plug#end()

let g:airline#extensions#tabline#enabled = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++'

colorscheme gruvbox

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

set t_Co=256
set background=dark

" Enable ripgrep for file searching
if executable('rg')
  " Use rg over grep
  set grepprg=rg\ --nogroup\ --nocolor

  " Use rg in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'rg %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

nnoremap <silent> <C-f> :Files<Cr>
nnoremap <silent> <Leader>f :Rg<Cr>
autocmd BufWritePre * :%s/\s\+$//e
