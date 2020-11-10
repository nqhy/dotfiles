" ==================================================== Init Configure
let mapleader=','

" ==================================================== Plugin
call plug#begin(expand('~/.config/nvim/plugged'))
""""""""""""""""""""""""""THEME""""""""""""""""""""""""""
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
Plug 'ayu-theme/ayu-vim'
Plug 'caksoylar/vim-mysticaltutor'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'Yggdroot/indentLine'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

""""""""""""""""""""""""""MOVEMENT""""""""""""""""""""""""""
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'
Plug 'tpope/vim-commentary'
Plug 'joequery/stupid-easymotion'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'yuki-ycino/fzf-preview.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""""""""""""""""""""""""""SOURCE MANAGEMENT""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
"Config Fugitive
if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse

""""""""""""""""""""""""""OTHERS""""""""""""""""""""""""""
Plug 'cohama/lexima.vim'
Plug 'wincent/scalpel'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'kamykn/spelunker.vim'
Plug 'majutsushi/tagbar'
Plug 'benmills/vimux' "Vi + Tmux

call plug#end()

" ==================================================== Config Plugin
source ~/.config/nvim/config/ale.vim
source ~/.config/nvim/config/airline.vim
source ~/.config/nvim/config/anyjump.vim
source ~/.config/nvim/config/barbar.vim
source ~/.config/nvim/config/buffer.vim
source ~/.config/nvim/config/coc.vim
source ~/.config/nvim/config/fzf.vim
source ~/.config/nvim/config/git.vim
source ~/.config/nvim/config/mappingkey.vim
source ~/.config/nvim/config/nerdtree.vim
source ~/.config/nvim/config/ruby.vim
source ~/.config/nvim/config/scalpel.vim
source ~/.config/nvim/config/session.vim
source ~/.config/nvim/config/spelunker.vim
source ~/.config/nvim/config/tagbar.vim
source ~/.config/nvim/config/tmux.vim

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" ==================================================== General Config
filetype plugin indent on

set nocompatible              " be iMproved, required filetype off
" set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set cursorline
set guicursor=n:blinkon1        "Fix bug cursor of COC
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set encoding=utf-8
set lazyredraw
set ttimeout
set ttimeoutlen=2
set relativenumber

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Turn on syntax highlighting
if !exists('g:syntax_on')
	syntax enable
endif

" ==================================================== Mouse
set mouse=a

" ==================================================== Theme
hi Comment cterm=italic
let g:nvcode_termcolors=256

syntax on
colorscheme nvcode


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" ==================================================== Turn Off Swap Files
set noswapfile
set nobackup
set nowritebackup
set nowb

" ==================================================== Indentation
set autoindent
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set expandtab ts=2 sw=2 ai

autocmd Filetype php setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype kotlin setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype java setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype xml setlocal ts=4 sw=4 sts=0 expandtab

autocmd BufWritePre * %s/\s\+$//e

" Auto indent pasted text
nnoremap p p=`]
nnoremap P P=`]

filetype plugin on
filetype indent on

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ==================================================== Folds
set foldmethod=indent   "fold based on indent
set foldnestmax=5       "deepest fold is 5 levels
set nofoldenable        "dont fold by default

" ==================================================== Completion
set wildmenu
set wildmode=longest:full,full
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ==================================================== Scrolling
set scrolloff=3         "Start scrolling when we're 3 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ==================================================== Search
set incsearch       " Find the next match as we type the search
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
set hlsearch
