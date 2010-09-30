filetype plugin indent on " Filetype detection and indentation
syntax on " Syntax highlighting
set nocompatible " Disable vi quirk
set encoding=utf-8 " Unicode baby
set number " Show line number
set showbreak=>> " Characters shown on soft wrap
set mouse=a
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Formatting
set cindent
set smartindent
set autoindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case

" Visual
set showmatch " Show matching bracket
set mat=5 " Bracket blinking

" Keymapping
nnoremap / /\v
vnoremap / /\v
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nnoremap j gj
nnoremap k gk

" Finder
set ignorecase
set smartcase

" Search
set hlsearch " Highlight search result

" History
set history=1000
set undolevels=1000

" Backup and swap
set nobackup
set noswapfile

" Default colors
if &t_Co >= 256 || has("gui_running")
   colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

" Leader
let mapleader = ","
nnoremap <leader>f :Ack
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>i gg=G 
