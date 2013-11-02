filetype plugin indent on " Filetype detection and indentation
syntax on " Syntax highlighting
set nocompatible " Disable vi quirk
set encoding=utf-8 " Unicode baby
set number " Show line number
"set showbreak=>> " Characters shown on soft wrap
set mouse=a
set ttymouse=xterm2 " somehow I'm not able to resize window if not using this 
set t_Co=256
execute pathogen#infect()
"call pathogen#incubate()
"call pathogen#helptags()

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
set gfn=Cousine\ 9
set gfw=Cousine\ 9
set viewoptions=folds,options,cursor,unix,slash
set virtualedit=onemore
set cursorline "highlight current line
if has('statusline')
  set laststatus=2
	" Broken down into easily includeable segments
  set statusline=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  "set statusline+=%{fugitive#statusline()} "  Git Hotness
  set statusline+=\ [%{&ff}/%Y]            " filetype
  set statusline+=\ [%{getcwd()}]          " current dir
  set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif
set scrolloff=3 " minimum lines when scrolling
"set spell
"set binary " don't add newline on the end of file
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
set ic " Ignore case
set is " Incremental search

" History
set history=1000
set undolevels=1000

" Backup and swap
set nobackup
set noswapfile

" Default colors
if &t_Co > 2 
  syntax enable
  set background=dark
  colorscheme vimbrant " molokai Tomorrow-Night-Bright solarized mustang railscasts zenburn
endif
if &t_Co >= 256 || has("gui_running")
  syntax enable
  set background=dark
  colorscheme vimbrant " molokai Tomorrow-Night-Bright solarized mustang railscasts zenburn
endif

" Leader
let mapleader = ","
nnoremap <leader>f :Ack
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>i gg=GG
nnoremap <leader>p o<ESC>p
noremap <f5> :bprev<CR>
noremap <f8> :bnext<CR>
set laststatus=2
:let g:buftabs_in_statusline=1

"autocmd VimEnter * RainbowParenthesesToggle
set undodir="/home/karuna/.vim/undodir"
set undofile
set undolevels=10000 "maximum number of changes that can be undone
set undoreload=100000 "maximum number lines to save for undo on a buffer reload
