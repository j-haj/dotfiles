" Turn off vi compatibility
set nocompatible

" Load plugins Vundle plugins here
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()


" Pathogen
execute pathogen#infect()

" Turn on syntax highlighting
syntax on

" Set background color
set background=dark

" Set colorscheme
colorscheme seagull

" For plugins to load correctly
filetype plugin indent on

" Show line numbers
set number

" Show file stats
set ruler

" Show cmd in bottom bar
set showcmd

" Show cursorline
set cursorline

" Load filetype-specific indent files
filetype indent on

" Visual autocomplete for command menu
set wildmenu

" Redraw only when needed
set lazyredraw

" Highlight matching [{()}]

" Searching
set incsearch 	" search as characters are entered
set hlsearch 	" highlight matches

" Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmpset 
set writebackup

" Whitespace
set wrap
set textwidth=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" NERDTree customization
autocmd vimenter * NERDTree " Automatically start NERDTree when vim startsup
autocmd vimenter * TagbarToggle " Start Tagbar on startup

" Set Python spacing to 4 spaces
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Set Go spacing to tabs with width 8
autocmd Filetype go setlocal noexpandtab tabstop=8 shiftwidth=8 softtabstop=8

" Turn off expand tab for make
autocmd Filetype make setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

" Linux Kernel formatting
command KernelFmt setlocal noexpandtab tabstop=8 shiftwidth=8 softtabstop=8
