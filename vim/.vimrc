set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin) 
" " Plugin 'file:///home/gmarik/path/to/plugin' 
" The sparkup vim script is in a subdirectory of this repo called vim.  
" Pass the path to set the runtimepath properly.  
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
" Install L9 and avoid a Naming conflict if you've already installed a 
" different version somewhere else.  
" Plugin 'ascenator/L9', {'name': 'newL9'} 
Plugin 'junegunn/fzf.vim' 
Plugin 'itchyny/lightline.vim' 
" Plugin 'scrooloose/nerdtree' 
" All of your Plugins must be added before the following line 
call vundle#end()            " required 
filetype plugin indent on    " required 
" To ignore plugin indent changes, instead use: 
" filetype plugin on " " Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set history=1000
set showcmd
set showmode
set autoread
set laststatus=2
set ruler
set wildmenu
set cursorline
set noerrorbells
set visualbell
set mouse=a
set background=dark
set number
set relativenumber
set nobackup
set nowb
set shiftwidth=2
set expandtab
set nowrap
set scrolloff=2
set sidescrolloff=5
set confirm
syntax on
set nomodeline
colorscheme elflord
filetype plugin indent on
" Using lightline for status bar -- saving this for later
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set hlsearch
set ignorecase
set smartcase
set incsearch
set ai
set si
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap j gj
nnoremap k gk
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
map <C-K> :bprev<CR>
map <C-J> :bnext<CR>
" map <C-[> <esc>
set lazyredraw
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set ttyfast
set undodir=~/.vim/undodir
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
" NerdTree Settings
" autocmd VimEnter * NERDTREE
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" map <C-n> :NERDTreeToggle<CR>
